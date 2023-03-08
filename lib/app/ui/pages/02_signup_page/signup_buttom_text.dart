import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quote_master/app/routes/routes_name.dart';
import 'package:quote_master/app/ui/utils/show_loading_utils.dart';

class SignButtomText extends StatelessWidget {
  const SignButtomText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "I'm already a member ?",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Builder(
            builder: (context) {
              return TextButton(
                onPressed: () {
                  ShowLoadingUtil.showLoading(context);
                  Future.delayed(
                    const Duration(milliseconds: 1000),
                    () {
                      Get.offNamed(RoutesName.loginScreen);
                    },
                  );
                },
                child: const Text(
                  "Log in",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
