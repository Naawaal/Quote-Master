import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CarouselShadow extends StatelessWidget {
  const CarouselShadow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height,
      color: Colors.black.withOpacity(0.5),
    );
  }
}
