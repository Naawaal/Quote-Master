import 'package:flutter/material.dart';

import '../../../data/services/01_login_services/login_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    LoginService().checkUserLoginOrNot();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
