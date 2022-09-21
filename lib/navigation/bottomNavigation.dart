import 'package:flutter/material.dart';
import 'package:light_code_examples/second_screen.dart/character_screen.dart';

import '../first_screen/dublicate_text_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _widgetOptions = <Widget>[
    const TextDublicateScreen(),
    const CharacterScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.red,
                  Colors.blue,
                ],
              ),
            ),
            height: 60,
          ),
          BottomNavigationBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            selectedItemColor: Colors.white,
            items: const [
              BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.text_fields_rounded,
                    color: Colors.white,
                  ),
                  icon: Icon(
                    Icons.text_fields_rounded,
                    size: 30,
                    color: Colors.white,
                  ),
                  label: "Дубликация"),
              BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                icon: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                label: "Запрос",
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            type: BottomNavigationBarType.fixed,
          ),
        ],
      ),
    );
  }
}
