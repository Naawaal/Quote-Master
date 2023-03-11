import 'package:flutter/material.dart';
import 'package:quote_master/app/ui/pages/05_quote_page/carousel_builder.dart';
import 'package:quote_master/app/ui/pages/05_quote_page/carousel_content.dart';
import 'package:quote_master/app/ui/pages/05_quote_page/carousel_shadow.dart';

class QuoteScreen extends StatelessWidget {
  const QuoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          CarouselContent(),
          const CarouselShadow(),
          CarouselBuilder(),
        ],
      ),
    );
  }
}
