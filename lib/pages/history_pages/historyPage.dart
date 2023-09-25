import 'package:flutter/material.dart';
import 'package:flutter_luas_bangun_datar/pages/history_pages/controller/historyController.dart';
import 'package:flutter_luas_bangun_datar/pages/history_pages/model/historyClass.dart';
import 'package:flutter_luas_bangun_datar/reuse/historyCardList.dart';
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
          Get.back();
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
      body: Padding(
        padding: const EdgeInsets.only(top: 90),
        child: ListView.builder(
          padding: const EdgeInsets.only(bottom: 30),
          itemCount: historyController.historyList.length,
          itemBuilder: (BuildContext context, int index) {
            CalculatorHistory history = historyController.historyList[index];
            return HistoryCardList(history: history);
          },
        ),
      ),
    );
  }
}
