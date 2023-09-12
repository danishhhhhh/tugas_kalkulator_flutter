import 'package:flutter/material.dart';
import 'package:flutter_luas_bangun_datar/pages/calculator_pages/model/rumusClass.dart';


class CalculateFunction{
  void Calculate(List<TextEditingController> controllers, RumusClass controller) {
    final List<double> values = controllers.map((controller) {
      return double.tryParse(controller.text) ?? 0.0;
    }).toList();

    controller.rumusLuas(values);

  }
}