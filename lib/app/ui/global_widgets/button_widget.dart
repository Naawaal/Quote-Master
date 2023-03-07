import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonWidget extends StatelessWidget {
  final Function()? onPressed;
  final String text;
  const ButtonWidget({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: Get.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: <Color>[
            Color(0xffff5f6d),
            Color(0xffff5f6d),
            Color(0xffffc371),
          ],
        ),
      ),
      child: MaterialButton(
        onPressed: onPressed,
        splashColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
          ),
        ),
      ),
    ).marginOnly(left: 5, right: 5);
  }
}
