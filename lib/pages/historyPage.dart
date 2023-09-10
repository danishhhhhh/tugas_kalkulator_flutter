import 'package:flutter/material.dart';
import 'package:flutter_luas_bangun_datar/controller/historyController.dart';
import 'package:flutter_luas_bangun_datar/model/calculatorHistory.dart';
import 'package:flutter_luas_bangun_datar/pages/homePage.dart';
import 'package:get/get.dart';

class HistoryPage extends StatelessWidget {
  HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final HistoryController historyController = Get.put(HistoryController());

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: ElevatedButton(
        onPressed: () {
          Get.to(const HomePage());
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFC2CEF4),
          minimumSize: Size.zero,
          padding: const EdgeInsets.all(10),
        ),
        child: const Icon(
          Icons.arrow_back,
          size: 35,
          color: Color(0xFF484F66),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.only(bottom: 50),
        itemCount: historyController.historyList.length,
        itemBuilder: (BuildContext context, int index) {
          CalculatorHistory history = historyController.historyList[index];
          return Text(history.title);
        },
      ),
    );
  }
}
