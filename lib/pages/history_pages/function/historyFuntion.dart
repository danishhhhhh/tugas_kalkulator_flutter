import 'package:flutter_luas_bangun_datar/pages/history_pages/model/historyClass.dart';
import 'package:get/get.dart';

import '../controller/historyController.dart';

class HistoryFunction {
  final HistoryController historyController = Get.put(HistoryController());
  void addToHistory(String image, String title, double hasil,) {

    CalculatorHistory calculatorHistory = new CalculatorHistory(image: image, title: title, hasil: hasil);
    historyController.historyList.add(calculatorHistory);

  }
}
