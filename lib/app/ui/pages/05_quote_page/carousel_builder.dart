import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quote_master/app/ui/theme/teststyle.dart';

import '../../../data/models/sample_quote.dart';

class CarouselBuilder extends StatelessWidget {
  const CarouselBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: quotesList.length,
      itemBuilder: (context, index, realIndex) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              quotesList[index][kQuote],
              textAlign: TextAlign.center,
              style: kQuoteTextStyle,
            ).paddingAll(12),
            Text(
              "Author: ${quotesList[index][kAuthor]}",
              style: kAuthorStyle,
            ).paddingAll(12),
          ],
        );
      },
      options: CarouselOptions(
        scrollDirection: Axis.vertical,
        height: Get.height,
        initialPage: 0,
        pageSnapping: true,
        enlargeCenterPage: true,
      ),
    );
  }
}
