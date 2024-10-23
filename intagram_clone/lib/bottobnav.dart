import 'package:flutter/material.dart';
import 'package:intagram_clone/HomePage.dart';
import 'package:intagram_clone/LikePage.dart';
import 'package:intagram_clone/Profile.dart';
import 'package:intagram_clone/SearchPage.dart';

void main() {
  runApp(MaterialApp(
    home: CustomBottomNavigationBar(),
  ));
}

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  bool a = true;
  int _selectedIndex = 0; // To keep track of the selected bottom nav bar item

  // Method to change the selected index
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // List of widgets for different tabs
  static List<Widget> _widgetOptions = <Widget>[
    // Search Tab
    Homepage(),
    // Add Post Tab
    Searchpage(),
    Likepage(),
    Profile()
  ];
  @override
  Widget build(BuildContext context) {
    // Detect current theme mode

    return Scaffold(
      body: _widgetOptions[_selectedIndex], // Show the selected page's content
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage('images/i31.jpg'), // Profile image
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).colorScheme.inversePrimary,
        unselectedItemColor: Theme.of(context).colorScheme.primary,
        onTap: _onItemTapped, // Handle tap on navigation bar item
      ),
    );
  }
}
