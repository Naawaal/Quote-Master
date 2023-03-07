import 'package:flutter/material.dart';

class ShowLoadingUtil {
  static void showLoading(context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(
            color: Colors.white,
          ),
        );
      },
    );
  }
}
