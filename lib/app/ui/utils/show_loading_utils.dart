import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShowLoadingUtil {
  static void showLoading(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return Center(
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              shape: BoxShape.rectangle,
              color: Colors.white,
            ),
            child: const CircularProgressIndicator(
              color: Color(0xffff786e),
            ),
          ),
        );
      },
    );
  }

  static void hideLoading(BuildContext context) {
    Get.back();
  }
}
