import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:quote_master/app/routes/routes_name.dart';

class LoginService {
  void checkUserLoginOrNot() {
    final auth = FirebaseAuth.instance;
    if (auth.currentUser?.uid != null) {
      Timer(2.seconds, () {
        Get.offNamed(RoutesName.navScreen);
      });
    } else {
      Get.offNamed(RoutesName.loginScreen);
    }
  }
}
