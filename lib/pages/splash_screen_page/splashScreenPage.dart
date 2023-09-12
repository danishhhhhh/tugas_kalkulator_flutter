import 'package:flutter/material.dart';
import 'package:flutter_luas_bangun_datar/pages/calculator_pages/homePage.dart';
import 'package:get/get.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Get.to(const HomePage());
    });

    return Scaffold(
      backgroundColor: const Color(0xFFE9EEFF),
      body: Center(
        child: Image.asset("images/LogoCalculator.png")
      ),
    );
  }
}