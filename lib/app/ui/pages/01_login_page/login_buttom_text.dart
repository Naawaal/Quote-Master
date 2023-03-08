import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quote_master/app/routes/routes_name.dart';
import 'package:quote_master/app/ui/utils/show_loading_utils.dart';

class LoginButtomText extends StatelessWidget {
  const LoginButtomText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "I'm a new user ?",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Builder(builder: (context) {
            return TextButton(
              onPressed: () {
                ShowLoadingUtil.showLoading(context);
                Future.delayed(
                  const Duration(milliseconds: 1000),
                  () {
                    Get.offNamed(RoutesName.signUpScreen);
                  },
                );
              },
              child: const Text(
                "Sign up",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
