import 'package:flutter/material.dart';
import 'package:my_app/screen/home/home_screen.dart';
import 'package:my_app/screen/profile/profile_screen.dart';

class BottomTabbarScreen extends StatelessWidget {
  const BottomTabbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 107, 72, 141),
        unselectedItemColor: const Color.fromARGB(255, 103, 98, 108),
        onTap: _onItemTapped,
      ),
    );
  }
}
