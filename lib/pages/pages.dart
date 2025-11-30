import 'package:flutter/material.dart';
import 'package:local_names_ph/pages/favorite_page.dart';
import 'package:local_names_ph/pages/home_page.dart';
import 'package:local_names_ph/pages/messages_page.dart';
import 'package:local_names_ph/pages/profile_page.dart';
import 'package:local_names_ph/pages/search_page.dart';

class Pages extends StatefulWidget {
  const Pages({super.key});

  @override
  State<Pages> createState() => _PagesState();
}

 

class _PagesState extends State<Pages> {

   int selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List _pages = [
    HomePage(),   // ✔️ YOUR HOME SCREEN BODY HERE
    SearchPage(),
    FavoritePage(),
    MessagesPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[selectedIndex],   // ✔️ Only show selected page

      bottomNavigationBar: BottomNavigationBar(
        onTap: _navigateBottomBar,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFF13373D),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white60,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorites'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Messages'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}