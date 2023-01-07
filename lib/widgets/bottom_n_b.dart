import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:say_it/pages/feeds_page.dart';
import 'package:say_it/pages/home_page.dart';
import 'package:say_it/pages/profile_page.dart';
import 'package:say_it/pages/settings_page.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({super.key});

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  int _selectedIndex = 0;
  final List<Widget> _pages = <Widget>[
    HomePage(),
    FeedsPage(),
    SettingsPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.indigo,
        backgroundColor: Colors.white,
        animationDuration: const Duration(milliseconds: 300),
        animationCurve: Curves.ease,
        onTap: (value) {
          _onItemTapped(value);
        },
        items: const [
          Icon(
            Icons.home,
            color: Colors.white,
          ),
          Icon(
            Icons.feed,
            color: Colors.white,
          ),
          Icon(
            Icons.settings,
            color: Colors.white,
          ),
          Icon(
            Icons.person,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
