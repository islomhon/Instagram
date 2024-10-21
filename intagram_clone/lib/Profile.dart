import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  // GlobalKey yaratamiz
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  List aktuaynoye = [
    aktualni(
      ism: "Iskandar",
      rasm: "assets/food4.jpg",
    ),
    aktualni(
      ism: "Dolma",
      rasm: "assets/food6.jpg",
    ),
    aktualni(
      ism: "Doner",
      rasm: "assets/food3.jpg",
    ),
  ];
  List ismages = [
    "assets/gabi3.jpg",
    "assets/gabi2.jpg",
    "assets/gabi1.jpg",
    "assets/obito.jpg",
    "assets/img1.jpg",
    "assets/img2.jpg",
    "assets/img3.jpg",
    "assets/food2.jpg",
    "assets/food3.jpg",
    "assets/food4.jpg",
    "assets/food5.jpg",
    "assets/food6.jpg",
    "assets/city1.jpg",
    "assets/city2.jpg",
    "assets/city3.jpg",
    "assets/city4.jpg",
    "assets/city5.jpg",
    "assets/city6.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: Drawer(
        child: ListView(
          children: const [
            ListTile(
              title: Text('Salom! :)'),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 224, 223, 223),
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(
              Icons.lock,
              color: Colors.black54,
              size: 15,
            ),
            Text(
              " Krypt0n_01 ",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            Icon(
              CupertinoIcons.chevron_down,
              size: 15,
              color: Colors.black54,
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.black54),
            onPressed: () {
              _scaffoldKey.currentState?.openEndDrawer();
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        // Wrap the entire body in a SingleChildScrollView
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey.shade400),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            width: 74,
                            height: 74,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage('assets/avatar.jpg'),
                                fit: BoxFit.cover,
                              ),
                              border: Border.all(color: Colors.white, width: 2),
                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            "54",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Posts",
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "108",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Followers",
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "308",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Following",
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ilhomjonov Islomhon",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                          'Hammaga salom! \nbu man yasagan "Instagram"ning klondir! '),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {},
                    child: Container(
                      child: Center(
                        child: Text(
                          "Edit Profile",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                      width: double.infinity,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white70),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      children: [
                        Container(
                          width: 75,
                          height: 75,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.grey.shade400, width: 3),
                              shape: BoxShape.circle,
                              color: Colors.white70),
                          child: Icon(
                            Icons.add,
                            size: 40,
                            color: Colors.black54,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("New"),
                      ],
                    ),
                  ),
                  Row(children: aktuaynoye.map((e) => aktualnosye(e)).toList()),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Icon(
                  Icons.grid_on_outlined,
                  color: Colors.grey.shade500,
                  size: 50,
                ),
                Container(
                  width: double.infinity,
                  height: 6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    color: Colors.grey.shade400,
                  ),
                )
              ],
            ),
            Container(
                width: double.infinity,
                height: 600,
                child: GridView.builder(
                  physics:
                      NeverScrollableScrollPhysics(), // Scrollni olib tashlash
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:
                        3, // Har bir qator uchun 3ta container bo'ladi
                    mainAxisSpacing: 1, // Elementlar orasidagi vertikal masofa
                    crossAxisSpacing:
                        1, // Elementlar orasidagi gorizontal masofa
                  ),
                  itemCount: ismages
                      .length, // ismages listdagi rasmlar soniga mos ravishda
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              ismages[index]), // Listdan rasmni olamiz
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                )),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 224, 223, 223),
    );
  }
}

Widget aktualnosye(s) {
  return Padding(
    padding: const EdgeInsets.only(left: 10, right: 10),
    child: Column(
      children: [
        Container(
          width: 75,
          height: 75,
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: Colors.grey.shade400),
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Container(
              width: 74,
              height: 74,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(s.rasm), fit: BoxFit.cover),
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(s.ism),
      ],
    ),
  );
}

class aktualni {
  String? ism;
  String? rasm;
  aktualni({this.ism, this.rasm});
}
