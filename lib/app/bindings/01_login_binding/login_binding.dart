import 'package:get/get.dart';
import 'package:quote_master/app/controllers/01_login_controller/user_login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserLoginController());
  }
}
