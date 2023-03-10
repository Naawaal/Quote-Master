import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quote_master/app/data/api/unsplash_api.dart';
import 'package:quote_master/app/ui/pages/05_quote_page/carousel_builder.dart';

import '../../../controllers/04_unsplash_api_controller/unsplash_api_controller.dart';

class QuoteScreen extends StatefulWidget {
  const QuoteScreen({super.key});

  @override
  State<QuoteScreen> createState() => _QuoteScreenState();
}

class _QuoteScreenState extends State<QuoteScreen> {
  final unsplashApiController = Get.put(UnspalshApiController());
  @override
  void initState() {
    super.initState();
    UnsplashApi().unsplashApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Obx(
            () {
              return Container(
                width: Get.width,
                height: Get.height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      unsplashApiController.full.value,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: SafeArea(
                  child: CarouselBuilder(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
