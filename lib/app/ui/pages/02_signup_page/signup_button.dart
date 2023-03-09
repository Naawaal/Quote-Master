import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quote_master/app/controllers/02_signup_controller/signup_user_controller.dart';
import 'package:quote_master/app/ui/global_widgets/button_widget.dart';

final signupUserController = Get.find<SignupUserController>();

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ButtonWidget(
        text: 'Sign up',
        onPressed: () {
          signupUserController.signupUserController(context);
        },
      ),
    );
  }
}
