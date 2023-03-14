import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:quote_master/app/controllers/03_random_quote_controller/random_quote_controller.dart';

final randomQuoteController = Get.put(RandomQuoteController());

class HomepageStackContainer extends StatelessWidget {
  const HomepageStackContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () async {
              await FlutterClipboard.copy(
                  randomQuoteController.randomQuoteApiContent.value +
                      randomQuoteController.randomQuoteApiAuthor.value);
              Fluttertoast.showToast(
                msg: 'Copy to clipboard',
                backgroundColor: Colors.green,
                textColor: Colors.white,
                fontSize: 16,
                gravity: ToastGravity.CENTER,
              );
            },
            icon: const Icon(
              Icons.copy_all_outlined,
              color: Color(0xffff786e),
            ),
          ),
          IconButton(
            onPressed: () async {},
            icon: const Icon(
              Icons.download_outlined,
              color: Color(0xffff5f6d),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share_outlined,
              color: Color(0xffff786e),
            ),
          ),
        ],
      ),
    ).paddingSymmetric(vertical: 10, horizontal: 10);
  }
}
