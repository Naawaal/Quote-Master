import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quote_master/app/controllers/01_login_controller/user_login_controller.dart';
import 'package:quote_master/app/ui/global_widgets/button_widget.dart';

final userLoginController = Get.find<UserLoginController>();

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ButtonWidget(
        text: 'Login',
        onPressed: () {},
      ),
    );
  }
}
