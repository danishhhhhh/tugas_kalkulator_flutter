import 'package:flutter/material.dart';
import 'package:flutter_luas_bangun_datar/pages/calculator_pages/binding/luasBinding.dart';
import 'package:flutter_luas_bangun_datar/routes/routePages.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: LuasBinding(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      getPages: routes,
      initialRoute: '/',
    );
  }
}
