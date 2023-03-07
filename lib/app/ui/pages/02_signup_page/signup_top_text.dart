import 'package:flutter/material.dart';

class SignUpTopText extends StatelessWidget {
  const SignUpTopText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: 50,
        ),
        const Text(
          "Create Account,",
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          "Sign up to get started!",
          style: TextStyle(
            fontSize: 20,
            color: Colors.grey.shade400,
          ),
        ),
      ],
    );
  }
}
