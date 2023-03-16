import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:quote_master/app/ui/global_widgets/textformfiled_widget.dart';

import '../../../controllers/02_signup_controller/signup_user_controller.dart';

final signupUserController = Get.find<SignupUserController>();

class SignUpFormField extends StatelessWidget {
  const SignUpFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        Obx(() {
          return TextformfiledWidget(
            labelText: 'Username',
            controller: signupUserController.usernameContoller.value,
            icon: const Icon(Icons.person_2_outlined),
            validator: MultiValidator([
              RequiredValidator(errorText: "Required **"),
            ]),
          );
        }),
        const SizedBox(
          height: 12,
        ),
        Obx(() {
          return TextformfiledWidget(
            labelText: 'Email ID',
            controller: signupUserController.emailController.value,
            icon: const Icon(Icons.email_outlined),
            validator: MultiValidator([
              RequiredValidator(errorText: "Required **"),
              EmailValidator(errorText: "Wrong Email"),
            ]),
          );
        }),
        const SizedBox(
          height: 12,
        ),
        Obx(() {
          return TextformfiledWidget(
            labelText: 'Password',
            controller: signupUserController.passwordControler.value,
            icon: const Icon(Icons.lock_outline),
            validator:
                MinLengthValidator(6, errorText: "Should be at least 6 Digits"),
          );
        }),
      ],
    );
  }
}
