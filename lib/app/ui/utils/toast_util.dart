import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FlutterToastUtil {
  static flutterToast({required String message}) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: Colors.red,
      fontSize: 16,
      toastLength: Toast.LENGTH_LONG,
      textColor: Colors.white,
    );
  }
}
