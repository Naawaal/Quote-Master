import 'package:get/get.dart';

class UnspalshApiController extends GetxController {
  RxString full = "".obs;
  RxInt index = 0.obs;
  RxList<String> imageUrl = [
    "https://images.unsplash.com/photo-1567316106249-b2ecaeefdade?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fG5hdHVyZSUyMGRhcmt8ZW58MHx8MHx8&w=1000&q=80",
    "https://images.unsplash.com/photo-1612351641432-20a0f196086c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bmF0dXJlJTIwZGFya3xlbnwwfHwwfHw%3D&w=1000&q=80",
  ].obs;
}
