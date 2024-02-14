import 'package:bible/screens/mainScreen/pages/home_screen.dart';
import 'package:bible/screens/mainScreen/pages/bible_screen.dart';
import 'package:bible/screens/mainScreen/pages/hymn_screen.dart';
import 'package:bible/screens/mainScreen/pages/menu_screen.dart';
import 'package:bible/screens/mainScreen/pages/search_screen.dart';
import 'package:bible/utils/constants/colors.dart';
import 'package:bible/utils/constants/image_constants.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List pages = [
    const HomeScreen(),
    const BibleScreen(),
    const HymnScreen(),
    const SearchScreen(),
    const MenuScreen(),
  ];

  void _updateSelectedBottomNavIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem(
      String iconPath, String label, int index) {
    return BottomNavigationBarItem(
      icon: (_selectedIndex == index)
          ? Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0XFFD9D9D9),
              ),
              child: Image.asset(
                iconPath,
                width: 30,
                height: 36,
              ),
            )
          : Image.asset(
              iconPath,
              width: 30,
              height: 30,
            ),
      label: label,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _updateSelectedBottomNavIndex,
        backgroundColor: primaryColor,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: [
          _buildBottomNavigationBarItem(ImageConstants.iconHome, "Home", 0),
          _buildBottomNavigationBarItem(ImageConstants.iconBible, "Bible", 1),
          _buildBottomNavigationBarItem(ImageConstants.iconHymn, "Hymnal", 2),
          _buildBottomNavigationBarItem(ImageConstants.iconSearch, "Search", 3),
          _buildBottomNavigationBarItem(ImageConstants.iconMenu, "Menu", 4),
        ],
      ),
    );
  }
}
