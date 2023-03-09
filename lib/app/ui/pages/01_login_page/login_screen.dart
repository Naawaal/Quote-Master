import 'package:flutter/material.dart';
import 'package:quote_master/app/ui/pages/01_login_page/login_buttom_text.dart';
import 'package:quote_master/app/ui/pages/01_login_page/login_button.dart';
import 'package:quote_master/app/ui/pages/01_login_page/login_form_filed.dart';
import 'package:quote_master/app/ui/pages/01_login_page/login_top_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
            children: <Widget>[
              Column(
                children: const [
                  LoginTopText(),
                ],
              ),
              Column(
                children: const [
                  LoginFormFiled(),
                  LoginButton(),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  LoginButtomText(),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
