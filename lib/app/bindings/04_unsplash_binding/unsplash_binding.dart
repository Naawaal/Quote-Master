import 'package:get/get.dart';
import 'package:quote_master/app/controllers/04_unsplash_api_controller/unsplash_api_controller.dart';

class unsplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UnspalshApiController());
  }
}
