import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Likepage extends StatefulWidget {
  const Likepage({super.key});

  @override
  State<Likepage> createState() => _LikepageState();
}

class _LikepageState extends State<Likepage> {
  List follow = [
    folow(
      ism: "Karennne",
      post: "3",
      publickImage1: "assets/img1.jpg",
      publickImage2: "assets/img2.jpg",
      publickImage3: "assets/img3.jpg",
      rasm: "assets/5-odam.jpeg",
      soat: "3h",
    ),
    folow(
      ism: "gabi_sgm",
      post: "3",
      publickImage1: "assets/food3.jpg",
      publickImage2: "assets/city6.jpg",
      publickImage3: "assets/food6.jpg",
      rasm: "assets/obito.jpg",
      soat: "6",
    )
  ];

  List folow3 = [
    twoPerson(
      ism1: "gami_sgm",
      ism2: "Karennne",
      ism3: "Limonchik",
      rasm1: "assets/obito.jpg",
      rasm2: "assets/5-odam.jpeg",
      rasm: "assets/city2.jpg",
      soat: "2h",
    )
  ];

  List youList = [
    elements(
      ism: "ok_ok_07",
      soat: "1h",
      rasm: "assets/4-odam.jpg",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              // TabBar here instead of AppBar
              TabBar(
                labelColor: Colors.black, // Active tab text color
                unselectedLabelColor: Colors.grey, // Inactive tab text color
                indicatorColor: Colors.black, // Tab underline color
                tabs: const [
                  Tab(text: "Following"),
                  Tab(text: "You"),
                ],
              ),
              // TabBarView for the content
              Expanded(
                child: TabBarView(
                  children: [
                    _followingTab(), // Content of the "Following" tab
                    _youTab(), // Content of the "You" tab
                  ],
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }

  // Widget for the "Following" tab content
  Widget _followingTab() {
    return Column(
      children: [
        Column(
          children: follow.map((e) => onePerson(e)).toList(),
        ),
        SizedBox(
          height: 20,
        ),
        Column(
          children: folow3.map((e) => two(e)).toList(),
        ),
        SizedBox(
          height: 20,
        ),
        Column(
          children: youList.map((e) => followinYou(e)).toList(),
        ),
        SizedBox(
          height: 20,
        ),
        Column(
          children: follow.map((e) => onePerson(e)).toList(),
        ),
      ],
    );
  }

  // Widget for the "You" tab content
  Widget _youTab() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 8),
            child: Row(
              children: [
                Text(
                  "Follow Requests",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "New",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                              image: AssetImage("assets/5-odam.jpeg"),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          "Karennne",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text(
                          " liked your photo",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "1h",
                          style: TextStyle(color: Colors.grey.shade500),
                        ),
                      ],
                    ),
                    Text("      "),
                    Container(
                      width: 47,
                      height: 47,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/gabi1.jpg"),
                              fit: BoxFit.cover)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Text(
                  "Today",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  child: Stack(
                    children: [
                      Container(
                        width: 38,
                        height: 38,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                                image: AssetImage("assets/obito.jpg"),
                                fit: BoxFit.cover)),
                      ),
                      Positioned(
                        top: 13,
                        left: 13,
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                                image: AssetImage("assets/8-odam.jpg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "gabi_sgm",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          " and ",
                        ),
                        Text(
                          "jony_uz",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text("liked "),
                        Text("your"),
                        Text(" photo. "),
                        Text(
                          "2h",
                          style: TextStyle(color: Colors.grey.shade400),
                        )
                      ],
                    ),
                  ],
                ),
                Text("                      "),
                Padding(
                  padding: const EdgeInsets.only(right: 0),
                  child: Container(
                    width: 47,
                    height: 47,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/city5.jpg"),
                            fit: BoxFit.cover)),
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Text(
                  "This week",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                              image: AssetImage("assets/3-odam.jpg"),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Riza_m27",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Text(" mentioned you in a"),
                          ],
                        ),
                        Row(
                          children: [
                            Text("comment: "),
                            Text(
                              "@krypt0n_01",
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                            Text("exastly..")
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              CupertinoIcons.heart,
                              color: Colors.grey.shade500,
                              size: 18,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Reply",
                              style: TextStyle(
                                  color: Colors.grey.shade500, fontSize: 13),
                            )
                          ],
                        )
                      ],
                    ),
                    Text("      "),
                    Container(
                      width: 47,
                      height: 47,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/city2.jpg"),
                              fit: BoxFit.cover)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                          image: AssetImage("assets/3-odam.jpg"),
                          fit: BoxFit.cover)),
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "ok_ok_07 ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                            Text(
                              "Started",
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "following you",
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              "21h",
                              style: TextStyle(color: Colors.grey.shade500),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                Text("            "),
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: 90,
                    child: Center(
                      child: Text(
                        "message",
                        style: TextStyle(
                            color: Colors.black87, fontWeight: FontWeight.bold),
                      ),
                    ),
                    height: 34,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey.shade400)),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                          image: AssetImage("assets/obito.jpg"),
                          fit: BoxFit.cover)),
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Gabi_sgm ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                            Text(
                              "Started",
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "following you",
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              "10h",
                              style: TextStyle(color: Colors.grey.shade500),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                Text("            "),
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: 90,
                    child: Center(
                      child: Text(
                        "message",
                        style: TextStyle(
                            color: Colors.black87, fontWeight: FontWeight.bold),
                      ),
                    ),
                    height: 34,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey.shade400)),
                  ),
                )
              ],
            ),
          ),
          //Follow
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                          image: AssetImage("assets/5-odam.jpeg"),
                          fit: BoxFit.cover)),
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Karennne ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                            Text(
                              "Started",
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "following you",
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              "29h",
                              style: TextStyle(color: Colors.grey.shade500),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                Text("            "),
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: 90,
                    child: Center(
                      child: Text(
                        "Follow",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    height: 34,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue),
                  ),
                )
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                          image: AssetImage("assets/8-odam.jpg"),
                          fit: BoxFit.cover)),
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "alone__ ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                            Text(
                              "Started",
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "following you",
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              "2h",
                              style: TextStyle(color: Colors.grey.shade500),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                Text("            "),
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: 90,
                    child: Center(
                      child: Text(
                        "Follow",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    height: 34,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue),
                  ),
                )
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                          image: AssetImage("assets/7-odam.jpg"),
                          fit: BoxFit.cover)),
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "ms_leyla ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                            Text(
                              "Started",
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "following you",
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              "6h",
                              style: TextStyle(color: Colors.grey.shade500),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                Text("            "),
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: 90,
                    child: Center(
                      child: Text(
                        "Follow",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    height: 34,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue),
                  ),
                )
              ],
            ),
          ),
          Text("             "),
        ],
      ),
    );
  }
}

class folow {
  String? rasm;
  String? ism;
  String? post;
  String? soat;
  String? publickImage1;
  String? publickImage2;
  String? publickImage3;
  folow({
    this.ism,
    this.post,
    this.soat,
    this.publickImage1,
    this.publickImage2,
    this.publickImage3,
    this.rasm,
  });
}

Widget onePerson(atrib) {
  return Padding(
    padding: const EdgeInsets.only(top: 10, left: 10),
    child: Column(
      children: [
        Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                      image: AssetImage(atrib.rasm), fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              atrib.ism,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "liked ${atrib.post} posts.",
              style: TextStyle(color: Colors.black87),
            ),
            SizedBox(
              width: 3,
            ),
            Text(
              atrib.soat,
              style: TextStyle(
                color: Colors.grey.shade500,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 55),
          child: Row(
            children: [
              Container(
                width: 47,
                height: 47,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(atrib.publickImage1),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                width: 47,
                height: 47,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(atrib.publickImage2),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                width: 47,
                height: 47,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(atrib.publickImage3),
                        fit: BoxFit.cover)),
              ),
            ],
          ),
        )
      ],
    ),
  );
}

Widget two(twolike) {
  return Padding(
    padding: const EdgeInsets.only(left: 10, top: 20),
    child: Column(
      children: [
        Row(
          children: [
            Container(
              width: 60,
              height: 60,
              child: Stack(
                children: [
                  Container(
                    width: 38,
                    height: 38,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                            image: AssetImage(twolike.rasm1),
                            fit: BoxFit.cover)),
                  ),
                  Positioned(
                    top: 13,
                    left: 13,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2),
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                            image: AssetImage(twolike.rasm2),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      "${twolike.ism1}, ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "and ",
                    ),
                    Text(
                      "${twolike.ism2}",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text("liked "),
                    Text(
                      twolike.ism3,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(" photo. "),
                    Text(
                      twolike.soat,
                      style: TextStyle(color: Colors.grey.shade400),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              width: 65,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 6),
              child: Container(
                width: 47,
                height: 47,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(twolike.rasm), fit: BoxFit.cover)),
              ),
            ),
          ],
        )
      ],
    ),
  );
}

class twoPerson {
  String? rasm1;
  String? rasm2;
  String? ism1;
  String? ism2;
  String? ism3;
  String? soat;
  String? rasm;
  twoPerson({
    this.ism1,
    this.ism2,
    this.ism3,
    this.rasm1,
    this.rasm2,
    this.rasm,
    this.soat,
  });
}

Widget followinYou(you) {
  return Padding(
    padding: const EdgeInsets.only(left: 10, top: 10),
    child: Row(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              image: DecorationImage(
                  image: AssetImage(you.rasm), fit: BoxFit.cover)),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "${you.ism}",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text("  started following you "),
        Text(
          "${you.soat}",
          style: TextStyle(color: Colors.grey.shade400),
        )
      ],
    ),
  );
}

class elements {
  String? rasm;
  String? ism;
  String? soat;
  elements({
    this.ism,
    this.rasm,
    this.soat,
  });
}
