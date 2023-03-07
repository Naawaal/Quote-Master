import 'package:flutter/material.dart';

class LoginTopText extends StatelessWidget {
  const LoginTopText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 50,
        ),
        const Text(
          'Welcome',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Sign in to continue!',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.grey.shade400,
          ),
        ),
      ],
    );
  }
}
