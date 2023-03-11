import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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

  List<IconData> iconList = [
    FontAwesomeIcons.house,
    FontAwesomeIcons.quoteRight,
    FontAwesomeIcons.user,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: children[_currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(FontAwesomeIcons.plus),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        leftCornerRadius: 18,
        splashColor: Colors.orange,
        activeColor: const Color(0xffff5f6d),
        icons: iconList,
        gapLocation: GapLocation.end,
        activeIndex: _currentIndex,
        onTap: onTabTapped,
        notchSmoothness: NotchSmoothness.smoothEdge,
        iconSize: 20,
      ),
    );
  }
}
