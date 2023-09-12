import 'package:flutter/material.dart';
import 'package:flutter_luas_bangun_datar/pages/calculator_pages/homePage.dart';
import 'package:flutter_luas_bangun_datar/pages/history_pages/historyPage.dart';
import 'package:flutter_luas_bangun_datar/pages/splash_screen_page/splashScreenPage.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreenPage(),
    );
  }
}
