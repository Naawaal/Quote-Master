import 'package:get/get.dart';
import 'package:quote_master/app/controllers/03_random_quote_controller/random_quote_controller.dart';

class RandomQuoteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RandomQuoteController>(() => RandomQuoteController());
  }
}
