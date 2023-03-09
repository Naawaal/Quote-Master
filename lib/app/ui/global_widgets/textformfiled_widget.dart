import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextformfiledWidget extends StatelessWidget {
  final String labelText;
  final Widget icon;
  String? Function(String?)? validator;
  final TextEditingController? controller;
  TextformfiledWidget({
    super.key,
    required this.labelText,
    required this.icon,
    this.controller,
    this.validator,
  });

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
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
          color: Colors.grey.shade500,
          fontSize: 15,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color(0xffff856f),
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
      ),
    ).marginOnly(left: 15, right: 15);
  }
}
