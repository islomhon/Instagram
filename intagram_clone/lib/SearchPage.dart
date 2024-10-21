import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui'; // BackdropFilter uchun kerak

class Searchpage extends StatefulWidget {
  const Searchpage({super.key});

  @override
  State<Searchpage> createState() => _SearchpageState();
}

class _SearchpageState extends State<Searchpage> {
  List a = [
    nomlar(nom: "Style"),
    nomlar(nom: "Sports"),
    nomlar(nom: "Auto"),
    nomlar(nom: "Cosmetik"),
  ];

  List images = [
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
      backgroundColor: const Color.fromARGB(255, 224, 223, 223),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              children: [
                _searchBar(),
                _horizontalScroll(),
                _imageGrid(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _searchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(20),
              ),
              height: 50,
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    hintStyle: TextStyle(color: Colors.black54, fontSize: 17),
                    prefixIcon:
                        Icon(CupertinoIcons.search, color: Colors.black54),
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 10),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
          Icon(Icons.fit_screen_outlined, color: Colors.grey.shade700),
        ],
      ),
    );
  }

  Widget _horizontalScroll() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _customIconButton(CupertinoIcons.tv_fill, "IGTV"),
          _customIconButton(Icons.shopping_bag_rounded, "Shop"),
          Row(children: a.map((e) => elements(e)).toList()),
        ],
      ),
    );
  }

  Widget _customIconButton(IconData icon, String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
      child: Container(
        height: 35,
        decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Row(
            children: [
              Icon(icon, color: Colors.black54, size: 20),
              SizedBox(width: 5),
              Text(label,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _imageGrid() {
    return Container(
      width: double.infinity,
      height: 593,
      child: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 3,
          mainAxisSpacing: 1,
          crossAxisSpacing: 1,
          children: List.generate(images.length, (index) {
            return StaggeredGridTile.count(
              crossAxisCellCount: index % 4 == 0 ? 2 : 1,
              mainAxisCellCount: index % 4 == 0 ? 2 : 1,
              child: GestureDetector(
                onTap: () => _showImageDialog(context, images[index]),
                child: Image.asset(images[index], fit: BoxFit.cover),
              ),
            );
          }),
        ),
      ),
    );
  }

  void _showImageDialog(BuildContext context, String imagePath) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: "ImageDialog",
      barrierColor: Colors.black.withOpacity(0.5),
      pageBuilder: (context, animation, secondaryAnimation) {
        return Center(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: InteractiveViewer(
                  panEnabled: true,
                  minScale: 1.0,
                  maxScale: 4.0, // Zoom qilish chegarasi
                  child: Container(
                      child: Image.asset(imagePath, fit: BoxFit.cover)),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

Widget elements(nomlar s) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
    child: Container(
      height: 35,
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Text(
          "${s.nom}",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        ),
      ),
    ),
  );
}

class nomlar {
  String? nom;
  nomlar({this.nom});
}
