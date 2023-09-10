import 'package:flutter/material.dart';
import 'package:flutter_luas_bangun_datar/controller/historyController.dart';
import 'package:flutter_luas_bangun_datar/model/calculatorHistory.dart';
import 'package:get/get.dart';

class HistoryPage extends StatelessWidget {

  HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {

    final HistoryController historyController = Get.put(HistoryController());

    return Scaffold(
      body: ListView.builder(
        padding: EdgeInsets.only(bottom: 50),
        itemCount: historyController.historyList.length,
        itemBuilder: (BuildContext context, int index) {
          CalculatorHistory history = historyController.historyList[index];
          return Text(history.title);
        },
      ),
    );
  }
}
