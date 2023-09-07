import 'package:flutter/material.dart';
import 'package:flutter_luas_bangun_datar/controller/luasController.dart';

class CalculatorButton extends StatelessWidget {
  CalculatorButton({super.key, required this.controller1,  required this.controller2,  required this.controller});
  TextEditingController controller1, controller2;
  LuasController controller;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        controller.luasSegiEmpat(
          double.parse(controller1.text),
          double.parse(controller2.text),
        );
      },
      child: Text(
        "Hitung",
        style: TextStyle(
          fontFamily: 'LilitaOne',
          color: Color(0xFF383430),
        ),
      ),
    );
  }
}
