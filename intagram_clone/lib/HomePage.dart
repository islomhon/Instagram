import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intagram_clone/SearchPage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<history> istoriyala = [
    history(
      ism: "Your Story",
      rasm: "assets/avatar.jpg",
    ),
    history(
      ism: "Kerennne",
      rasm: "assets/5-odam.jpeg",
    ),
    history(
      ism: "zackjohn",
      rasm: "assets/4-odam.jpg",
    ),
    history(
      ism: "kieron_d",
      rasm: "assets/3-odam.jpg",
    ),
    history(
      ism: "crag_sate",
      rasm: "assets/7-odam.jpg",
    ),
    history(
      ism: "ok_ok_07",
      rasm: "assets/8-odam.jpg",
    ),
    history(
      ism: "gabi_sgm",
      rasm: "assets/obito.jpg",
    ),
  ];

  List<Publick> pub = [
    Publick(
      ism: "Krypt0n_01",
      rasm: "assets/avatar.jpg",
      davlat: "Uzbekistan",
      izoh: "Salom bu mening vidyoyim",
      likebos: "assets/obito.jpg",
      likeism: "gabi_sgm",
      img1: "assets/img1.jpg",
      img2: "assets/img2.jpg",
      img3: "assets/img3.jpg",
      heart: false, // Alohida heart qiymati
    ),
    Publick(
      ism: "Gabi_sgm",
      rasm: "assets/obito.jpg",
      davlat: "Uzbekistan",
      izoh: "Salom bu mening rasmlarim",
      likebos: "assets/avatar.jpg",
      likeism: "Krypt0n_01",
      img1: "assets/gabi1.jpg",
      img2: "assets/gabi2.jpg",
      img3: "assets/gabi3.jpg",
      heart: false, // Alohida heart qiymati
    ),
  ];

  final List<Widget> _pages = [
    Homepage(),
    Searchpage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.camera,
                size: 27,
              ),
            ),
            actions: [
              Row(
                children: [
                  Container(
                    width: 27,
                    height: 27,
                    decoration: const BoxDecoration(
                      image:
                          DecorationImage(image: AssetImage("assets/chat.png")),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 27,
                    height: 27,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/send.png"),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                ],
              )
            ],
            centerTitle: true,
            title: Container(
              width: 140,
              height: 40,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/instalogo.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            pinned: false, // Scroll qilinganda yuqorida qoladi
            floating: true, // Tezkor scroll bilan ko'rinadi

            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: Colors.white,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children:
                      istoriyala.map((e) => istoriya(e, context)).toList(),
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Divider(),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return mypub(pub[index], () {
                  setState(() {
                    pub[index].heart = !pub[index].heart;
                  });
                });
              },
              childCount: pub.length,
            ),
          ),
        ],
      ),
    );
  }
}

class history {
  String? rasm;
  String? ism;
  history({this.ism, this.rasm});
}

class Publick {
  String? rasm;
  String? ism;
  String? davlat;
  String? likebos;
  String? likeism;
  String? izoh;
  String? img1;
  String? img2;
  String? img3;
  bool heart; // Yurakcha holati

  Publick({
    this.rasm,
    this.img1,
    this.img2,
    this.img3,
    this.ism,
    this.davlat,
    this.likebos,
    this.likeism,
    this.izoh,
    this.heart = false,
  });
}

Widget istoriya(history dog1, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: Column(
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(200),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => hitorya(pages: dog1)));
          },
          child: Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(255, 223, 17, 185),
                  Color.fromARGB(255, 255, 200, 0),
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                width: 64,
                height: 64,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(dog1.rasm ?? 'assets/avatar.jpg'),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(color: Colors.white, width: 2),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 2),
        Text(
          dog1.ism ?? 'Story',
          style: const TextStyle(fontSize: 12),
        ),
      ],
    ),
  );
}

Widget mypub(Publick dog2, Function onHeartPressed) {
  PageController _controller = PageController();

  return Padding(
    padding: const EdgeInsets.only(top: 15, bottom: 15),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                        image: AssetImage(dog2.rasm!),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        dog2.ism ?? '',
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),
                      Text(
                        dog2.davlat ?? '',
                        style: TextStyle(
                            fontSize: 13, color: Colors.grey.shade800),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: const Icon(
                  Icons.more_horiz, // Asl holati
                  size: 30,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Container(
          height: 300,
          child: PageView(
            controller: _controller,
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(dog2.img1!), fit: BoxFit.cover)),
              ),
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(dog2.img2!), fit: BoxFit.cover)),
              ),
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(dog2.img3!), fit: BoxFit.cover)),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () => onHeartPressed(),
                  icon: Icon(
                    dog2.heart
                        ? Icons.favorite
                        : Icons.favorite_border, // Asl ikonka
                    color: dog2.heart ? Colors.red : Colors.black,
                  ),
                ),
                Container(
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/image copy 4.png"))),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/image copy 3.png"))),
                ),
              ],
            ),
            SizedBox(
              width: 55,
            ),
            SmoothPageIndicator(
              controller: _controller, // SmoothPageIndicator asl holati
              count: 3,
              effect: ExpandingDotsEffect(
                expansionFactor: 2,
                dotWidth: 6.0,
                dotHeight: 6.0,
                activeDotColor: Colors.blue,
                dotColor: Colors.grey,
              ),
            ),
            SizedBox(
              width: 120,
            ),
            Container(
              width: 28,
              height: 28,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/image copy 5.png"))),
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.only(left: 12, bottom: 5),
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              Container(
                width: 27,
                height: 27,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(dog2.likebos!), fit: BoxFit.cover),
                ),
              ),
              const SizedBox(width: 8),
              RichText(
                text: TextSpan(
                    text: 'Liked by ',
                    style: const TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: dog2.likeism,
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      const TextSpan(
                        text: ' and ',
                      ),
                      const TextSpan(
                        text: 'other',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )
                    ]),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 12),
          alignment: Alignment.centerLeft,
          child: RichText(
            text: TextSpan(
              text: dog2.ism,
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                  text: ' ${dog2.izoh}',
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.normal),
                )
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

class hitorya extends StatefulWidget {
  final pages;
  const hitorya({super.key, required this.pages});

  @override
  State<hitorya> createState() => _hitoryaState();
}

class _hitoryaState extends State<hitorya> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 500,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.pages.rasm), fit: BoxFit.cover),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(100),
                    bottomLeft: Radius.circular(100))),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            widget.pages.ism,
            style: TextStyle(
                fontSize: 50, letterSpacing: 3, color: Colors.grey.shade500),
          )
        ],
      ),
    );
  }
}
