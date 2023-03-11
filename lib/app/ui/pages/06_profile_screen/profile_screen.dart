import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quote_master/app/ui/theme/teststyle.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  User? userEmail = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: Get.width,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.green,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(18),
              gradient: const LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.topLeft,
                colors: [
                  Color(0xffff5f6d),
                  Color(0xffff6c6e),
                  Color(0xffff786e),
                ],
              ),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 5.0,
                  blurRadius: 5,
                  offset: Offset(1.5, 3),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  userEmail?.email ?? "No User Found",
                  style: kQuoteTextStyle,
                ).marginAll(5),
                Text(
                  userEmail?.uid ?? "No User Found",
                ).marginAll(5),
              ],
            ),
          ).marginAll(5),
        ],
      ),
    );
  }
}
