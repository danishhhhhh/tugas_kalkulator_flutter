import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Get.offNamed('/homePage');
    });

    return Scaffold(
      backgroundColor: const Color(0xFFE9EEFF),
      body: Center(
        child: Image.asset("images/LogoCalculator.png")
      ),
    );
  }
}
