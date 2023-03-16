import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:quote_master/app/controllers/01_login_controller/user_login_controller.dart';
import 'package:quote_master/app/ui/global_widgets/textformfiled_widget.dart';

final userLoginController = Get.find<UserLoginController>();

class LoginFormFiled extends StatelessWidget {
  const LoginFormFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() {
          return TextformfiledWidget(
            labelText: "Email ID",
            icon: const Icon(Icons.email_outlined),
            controller: userLoginController.emailController.value,
            validator: MultiValidator([
              RequiredValidator(errorText: "Required **"),
              EmailValidator(errorText: "Wrong Email"),
            ]),
          );
        }),
        const SizedBox(
          height: 15,
        ),
        Obx(() {
          return TextformfiledWidget(
            labelText: "Password",
            icon: const Icon(Icons.lock_outline),
            controller: userLoginController.passwordController.value,
            validator:
                MinLengthValidator(6, errorText: "Should be at least 6 Digits"),
          );
        }),
        const SizedBox(
          height: 12,
        ),
        const Align(
          alignment: Alignment.topRight,
          child: Text(
            "Forgot Password ?",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
