import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({Key? key}) : super(key: key);

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List listOfColors = [
    Container(
        // color: Colors.w,
        ),
    Container(
        // color: Colors.yellow,
        ),
    Container(
        // color: Colors.blue,
        ),
    Container(
        //  color: Colors.redAccent,
        ),
    Container(
        //   color: Colors.amber,
        ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listOfColors[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: FaIcon(Icons.home_filled),
            label: '_',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(Icons.explore),
            label: '_',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(Icons.category_outlined),
            label: '_',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(Icons.favorite_outline),
            label: '_',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(Icons.person_outline),
            label: '_',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
