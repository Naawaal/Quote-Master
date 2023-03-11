import 'package:get/get.dart';
import 'package:quote_master/app/ui/theme/image_url.dart';

class UnspalshApiController extends GetxController {
  RxString full = "".obs;
  RxInt index = 0.obs;
  RxList<String> imageUrl = [
    firstImage,
    secondImage,
    thirdImage,
    fourthImage,
    fivthImage,
    sixthImage,
    seventhImage,
    eighthImage,
    ninthImage,
    tenthImage,
    eleventhImage,
    twelfthImage,
    thirteenthImage,
    fourteenthImage,
    fifteenthImage,
    sixteenthImage,
    seventeenthImage,
    eighteenthImage,
    nineteenthImage,
    twentiethImage,
  ].obs;
}
