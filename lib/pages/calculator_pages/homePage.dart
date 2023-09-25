import 'package:flutter/material.dart';
import 'package:flutter_luas_bangun_datar/pages/calculator_pages/controller/luasController.dart';
import 'package:flutter_luas_bangun_datar/pages/history_pages/historyPage.dart';
import 'package:flutter_luas_bangun_datar/pages/calculator_pages/widget/calculatorTabBar.dart';
import 'package:flutter_luas_bangun_datar/pages/calculator_pages/widget/calculatorTabbarView.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFE9EEFF),
        body: SafeArea(
          child: DefaultTabController(
            length: 5,
            child: Column(
              children: [
                const CalculatorTabBar(),
                CalculatorTabbarView(),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: Container(
          child: ElevatedButton(
            onPressed: () {
              Get.toNamed('historyPage');
            },
            child: Icon(
              Icons.history,
              size: 35,
              color: Color(0xFF484F66),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFC2CEF4),
              minimumSize: Size.zero,
              padding: EdgeInsets.all(10),
            ),
          ),
        ));
  }
}
