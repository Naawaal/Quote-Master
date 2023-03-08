import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quote_master/app/routes/routes_name.dart';
import 'package:quote_master/app/ui/utils/show_loading_utils.dart';

class UserLoginController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  userLoginController(context) {
    final email = emailController.value.text.trim();
    final password = passwordController.value.text.trim();
    try {
      ShowLoadingUtil.showLoading(context);
      Future.delayed(
        const Duration(milliseconds: 1000),
        () {
          Get.offNamed(RoutesName.homepageScreen);
        },
      );
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
