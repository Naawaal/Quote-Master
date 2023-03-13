import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:quote_master/app/routes/routes_name.dart';

class LoginService {
  void checkUserLoginOrNot() {
    final auth = FirebaseAuth.instance.currentUser;
    if (auth != null) {
      Timer(2.seconds, () {
        Get.offNamed(RoutesName.navScreen);
      });
    } else {
      Timer(2.seconds, () {
        Get.offNamed(RoutesName.loginScreen);
      });
    }
  }
}
