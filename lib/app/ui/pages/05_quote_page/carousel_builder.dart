import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:quote_master/app/controllers/03_random_quote_controller/random_quote_controller.dart';
import 'package:quote_master/app/ui/theme/teststyle.dart';

import '../../../controllers/04_unsplash_api_controller/unsplash_api_controller.dart';
import '../../../data/api/random_quote_api.dart';
import '../../../data/models/sample_quote.dart';

final randomQuoteController = Get.find<RandomQuoteController>();
final RandomQuoteApi randomQuoteApi = RandomQuoteApi();

class CarouselBuilder extends StatelessWidget {
  final Function(String)? onImageChnaged;
  CarouselBuilder({super.key, this.onImageChnaged});

  final unsplashApiController = Get.find<UnspalshApiController>();

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: quotesList.length,
      itemBuilder: (context, index, realIndex) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              randomQuoteController.randomQuoteApiContent.value,
              textAlign: TextAlign.center,
              style: kQuoteTextStyle,
            ).paddingAll(12),
            Obx(() {
              return Text(
                "Author: - ${randomQuoteController.randomQuoteApiAuthor} -",
                textAlign: TextAlign.center,
                style: kAuthorStyle,
              ).paddingAll(12);
            }),
          ],
        );
      },
      options: CarouselOptions(
        scrollDirection: Axis.vertical,
        height: Get.height,
        initialPage: 0,
        pageSnapping: true,
        enlargeCenterPage: true,
        aspectRatio: 1.6,
        onPageChanged: (index, reason) async {
          unsplashApiController.index.value = index;
          await randomQuoteApi.getRandomQuoteApi();
          HapticFeedback.lightImpact();
        },
      ),
    );
  }
}
