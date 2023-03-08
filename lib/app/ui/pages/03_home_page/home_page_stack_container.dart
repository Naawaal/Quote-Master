import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
            onPressed: () {},
            icon: const Icon(
              Icons.copy_all_outlined,
              color: Color(0xffff786e),
            ),
          ),
          IconButton(
            onPressed: () {},
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
