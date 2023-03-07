import 'package:flutter/material.dart';
import 'package:quote_master/app/ui/global_widgets/button_widget.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ButtonWidget(
        text: 'Sign up',
        onPressed: () {},
      ),
    );
  }
}
