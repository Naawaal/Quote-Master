import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/04_unsplash_api_controller/unsplash_api_controller.dart';

class CarouselContent extends StatelessWidget {
  CarouselContent({super.key});
  final unsplashApiController = Get.put(UnspalshApiController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        final random = Random();
        unsplashApiController.imageUrl.shuffle(random);
        return AnimatedSwitcher(
          duration: 1.seconds,
          child: Container(
            key: ValueKey(
              unsplashApiController.imageUrl[unsplashApiController.index.value %
                  unsplashApiController.imageUrl.length],
            ),
            width: Get.width,
            height: Get.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: CachedNetworkImageProvider(
                  unsplashApiController.imageUrl[
                      unsplashApiController.index.value %
                          unsplashApiController.imageUrl.length],
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
    );
  }
}
