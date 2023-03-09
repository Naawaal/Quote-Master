import 'package:flutter/material.dart';
import 'package:quote_master/app/ui/pages/04_home_page/home_screen.dart';
import 'package:quote_master/app/ui/pages/05_quote_page/quote_screen.dart';
import 'package:quote_master/app/ui/pages/06_profile_screen/profile_screen.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int _currentIndex = 0;
  final List<Widget> children = [
    const HomepageScreen(),
    const QuoteScreen(),
    const ProfileScreen(),
  ];
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 40,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/png/dashboard.png',
              width: 30,
              height: 30,
              fit: BoxFit.cover,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/png/quotes.png',
              width: 30,
              height: 30,
              fit: BoxFit.cover,
            ),
            label: 'Quotes',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'Profile',
          ),
        ],
        selectedLabelStyle: const TextStyle(
          fontSize: 12,
          color: Color(0xffF70000),
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 12,
          color: Colors.black,
        ),
      ),
    );
  }
}
