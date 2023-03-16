import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quote_master/app/routes/routes_name.dart';
import 'package:quote_master/app/ui/utils/show_loading_utils.dart';
import 'package:quote_master/app/ui/utils/toast_util.dart';

class UserLoginController extends GetxController {
  final auth = FirebaseAuth.instance;
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  void userLoginController(context) {
    final email = emailController.value.text.trim();
    final password = passwordController.value.text.trim();

    try {
      if (email.isEmpty || password.isEmpty) {
        if (email.isEmpty) {
          FlutterToastUtil.flutterToast(message: 'Email is requied');
        } else if (password.isEmpty) {
          FlutterToastUtil.flutterToast(message: 'Password is requied');
        }
      } else {
        ShowLoadingUtil.showLoading(context);
        Future.delayed(
          3.milliseconds,
          () async {
            await auth.signInWithEmailAndPassword(
              email: email,
              password: password,
            );
            Get.offNamed(RoutesName.navScreen);
          },
        );
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        FlutterToastUtil.flutterToast(message: 'User not found');
      }
    } finally {
      ShowLoadingUtil.hideLoading(context);
    }
  }
}
