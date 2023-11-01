import 'package:flutter/material.dart';
import 'package:my_app/ui/account_page.dart';
import 'package:my_app/ui/main_page.dart';
import 'package:my_app/ui/session_page.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home_page';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _bottomNavIndex = 0;
  static const String _homeText = 'Home';
  static const String _favoriteText = 'Session';
  static const String _settingText = 'Account';
  void _onBottomNavTapped(int index) {
    setState(() {
      _bottomNavIndex = index;
    });
  }

  final List<Widget> _listWidget = [
    const MainPage(),
    const SessionPage(),
    const AccountPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _listWidget[_bottomNavIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onBottomNavTapped,
        selectedItemColor: const Color(0xffEF6A37),
        currentIndex: _bottomNavIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: _homeText,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.schedule),
            label: _favoriteText,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: _settingText,
          ),
        ],
      ),
    );
  }
}
