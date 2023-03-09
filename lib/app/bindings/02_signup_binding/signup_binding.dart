import 'package:get/get.dart';
import 'package:quote_master/app/controllers/02_signup_controller/signup_user_controller.dart';

class SignupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignupUserController());
  }
}
