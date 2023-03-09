import 'package:flutter/material.dart';
import 'package:quote_master/app/ui/global_widgets/textformfiled_widget.dart';

class SignUpFormField extends StatelessWidget {
  const SignUpFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        TextformfiledWidget(
          labelText: 'Username',
          icon: const Icon(Icons.person_2_outlined),
        ),
        const SizedBox(
          height: 12,
        ),
        TextformfiledWidget(
          labelText: 'Email ID',
          icon: const Icon(Icons.email_outlined),
        ),
        const SizedBox(
          height: 12,
        ),
        TextformfiledWidget(
          labelText: 'Password',
          icon: const Icon(Icons.lock_outline),
        ),
      ],
    );
  }
}
