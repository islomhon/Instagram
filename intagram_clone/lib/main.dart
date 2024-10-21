import 'package:flutter/material.dart';
import 'package:intagram_clone/HomePage.dart';
import 'package:intagram_clone/LikePage.dart';
import 'package:intagram_clone/LoginPage.dart';
import 'package:intagram_clone/Profile.dart';
import 'package:intagram_clone/SearchPage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Loginpage(),
  ));
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  // Sahifalar ro'yxatini yaratamiz
  final List<Widget> _pages = [
    Homepage(),
    Searchpage(),
    Likepage(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // Hozirgi tanlangan sahifa
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // 4 dan ortiq element uchun kerak
        currentIndex: _selectedIndex, // Tanlangan element
        onTap: _onItemTapped, // Elementni bosganda sahifa o'zgaradi
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Likes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.black, // Tanlangan element rangi
        unselectedItemColor: Colors.grey, // Tanlanmagan elementlar rangi
      ),
    );
  }
}
