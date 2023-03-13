import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:quote_master/app/routes/routes_name.dart';
import 'package:quote_master/app/ui/pages/06_profile_screen/profile_top_container.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  User? userEmail = FirebaseAuth.instance.currentUser;
  var isDark = Get.isDarkMode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {
              Get.changeThemeMode(isDark ? ThemeMode.light : ThemeMode.dark);
            },
            icon: Icon(isDark ? FontAwesomeIcons.sun : FontAwesomeIcons.moon),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const ProfileTopContainer(),
          ListTile(
            onTap: () {
              FirebaseAuth.instance.signOut();
              Get.offNamed(RoutesName.loginScreen);
            },
            leading: const Icon(
              FontAwesomeIcons.arrowRightFromBracket,
              color: Color(0xffff916f),
            ),
            title: const Text(
              'Log out',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
