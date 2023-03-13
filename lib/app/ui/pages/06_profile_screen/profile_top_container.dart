import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quote_master/app/controllers/05_profile_controller/profile_controller.dart';

final profileController = Get.put(ProfileController());

class ProfileTopContainer extends StatefulWidget {
  const ProfileTopContainer({super.key});

  @override
  State<ProfileTopContainer> createState() => _ProfileTopContainerState();
}

class _ProfileTopContainerState extends State<ProfileTopContainer> {
  User? user = FirebaseAuth.instance.currentUser;

  @override
  void initState() {
    super.initState();
    profileController.getUserData();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/png/naruto.png")),
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 5.0,
                blurRadius: 5,
              ),
            ],
          ),
        ).marginSymmetric(vertical: 10),
        Column(
          children: [
            Text(
              "Name: ${profileController.userName.value}",
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            Text(
              "Email: ${user!.email}",
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
            const Divider().marginOnly(left: 5, right: 5),
          ],
        )
      ],
    );
  }
}
