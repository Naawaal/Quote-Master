import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quote_master/app/routes/routes_name.dart';
import 'package:quote_master/app/ui/utils/show_loading_utils.dart';
import 'package:quote_master/app/ui/utils/toast_util.dart';

class SignupUserController extends GetxController {
  final auth = FirebaseAuth.instance;
  final database = FirebaseFirestore.instance;
  final usernameContoller = TextEditingController().obs;
  final emailController = TextEditingController().obs;
  final passwordControler = TextEditingController().obs;

  void signupUserController(context) async {
    final username = usernameContoller.value.text;
    final email = emailController.value.text;
    final password = passwordControler.value.text;
    try {
      if (username.isEmpty || email.isEmpty || password.isEmpty) {
        if (username.isEmpty) {
          FlutterToastUtil.flutterToast(message: 'Username is required');
        } else if (email.isEmpty) {
          FlutterToastUtil.flutterToast(message: 'Email is required');
        } else if (password.isEmpty) {
          FlutterToastUtil.flutterToast(message: 'Password is required');
        }
      } else {
        ShowLoadingUtil.showLoading(context);
        await auth.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );

        // Send verification email to user's email address
        await auth.currentUser!.sendEmailVerification();

        // Wait for the email to be sent before navigating to homepage
        await auth.currentUser!.reload();
        while (!auth.currentUser!.emailVerified) {
          await Future.delayed(const Duration(seconds: 1));
          await auth.currentUser?.reload();
        }

        // Save user data to Firestore if email has been verified
        database.collection('users').doc(auth.currentUser?.uid).set(
          {
            'uid': auth.currentUser?.uid,
            'name': username,
            'email': email,
          },
        );

        // Navigate to homepage
        await Get.offNamed(RoutesName.homepageScreen);
      }
    } on FirebaseAuthException catch (e) {
      FlutterToastUtil.flutterToast(message: '${e.message}');
    }
  }
}
