import 'package:flutter/material.dart';
import 'package:quote_master/app/ui/pages/02_signup_page/signup_buttom_text.dart';
import 'package:quote_master/app/ui/pages/02_signup_page/signup_button.dart';
import 'package:quote_master/app/ui/pages/02_signup_page/signup_form_field.dart';
import 'package:quote_master/app/ui/pages/02_signup_page/signup_top_text.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SignUpTopText(),
              Column(
                children: const [
                  SignUpFormField(),
                  SizedBox(
                    height: 30,
                  ),
                  SignUpButton(),
                ],
              ),
              const SignButtomText(),
            ],
          ),
        ),
      ),
    );
  }
}
