import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextformfiledWidget extends StatelessWidget {
  final String labelText;
  final Widget icon;
  final TextEditingController? controller;
  const TextformfiledWidget({
    super.key,
    required this.labelText,
    required this.icon,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      decoration: BoxDecoration(
        color: const Color(0xffF7F8F8),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.grey.shade300,
            ),
          ),
          border: InputBorder.none,
          prefixIcon: icon,
          labelText: labelText,
          labelStyle: TextStyle(
            color: Colors.grey.shade400,
            fontSize: 15,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.red,
            ),
          ),
        ),
      ),
    ).marginOnly(left: 15, right: 15);
  }
}
