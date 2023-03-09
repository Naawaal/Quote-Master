import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quote_master/app/data/api/random_quote_api.dart';
import 'package:quote_master/app/ui/pages/04_home_page/home_page_stack_container.dart';

import '../../../controllers/03_random_quote_controller/random_quote_controller.dart';

final randomQuoteController = Get.find<RandomQuoteController>();
final RandomQuoteApi randomQuoteApi = RandomQuoteApi();

class HomeTopContainer extends StatefulWidget {
  const HomeTopContainer({super.key});

  @override
  State<HomeTopContainer> createState() => _HomeTopContainerState();
}

class _HomeTopContainerState extends State<HomeTopContainer> {
  @override
  void initState() {
    super.initState();
    randomQuoteApi.getRandomQuoteApi();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Random Quotes:',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () async {
                  await randomQuoteApi.getRandomQuoteApi();
                },
                child: const Text(
                  'Next',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                alignment: Alignment.topLeft,
                width: Get.width,
                padding: const EdgeInsets.only(bottom: 50, left: 10, right: 10),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.topLeft,
                    colors: [
                      Color(0xffff856f),
                      Color(0xffff9e70),
                    ],
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 5.0,
                      blurRadius: 5,
                      offset: Offset(1.5, 3),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Obx(() {
                        return Text(
                          "${randomQuoteController.randomQuoteApiTag.value} :",
                          style: const TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        );
                      }),
                      subtitle: Obx(() {
                        return Text(
                          randomQuoteController.randomQuoteApiContent.value,
                          textAlign: TextAlign.justify,
                          style: const TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ).paddingAll(6);
                      }),
                    ),
                    Obx(
                      () => Text(
                        "Aurthur: ${randomQuoteController.randomQuoteApiAuthor}",
                        textAlign: TextAlign.justify,
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ).paddingOnly(left: 20, bottom: 15),
                    ),
                  ],
                ),
              ).marginOnly(left: 5, right: 5),
              const HomepageStackContainer(),
            ],
          ),
        ],
      ),
    );
  }
}
