import 'package:flutter/material.dart';
import 'package:quote_master/app/ui/pages/03_home_page/home_top_container.dart';

class HomepageScreen extends StatelessWidget {
  const HomepageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        leading: const Icon(
          Icons.menu_outlined,
          color: Color(0xffff6c6e),
        ),
        title: const Text(
          'Quote Master',
          style: TextStyle(
            color: Color(0xffff5f6d),
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            HomeTopContainer(),
          ],
        ),
      ),
    );
  }
}
