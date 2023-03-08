import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quote_master/app/routes/routes.dart';
import 'package:quote_master/app/ui/theme/fonts.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quote Master',
      themeMode: ThemeMode.system,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: FontsConst.appThemeFont,
        primarySwatch: Colors.teal,
      ),
      getPages: Routes.appRoutes(),
    );
  }
}
