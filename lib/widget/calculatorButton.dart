import 'package:flutter/material.dart';
import 'package:flutter_luas_bangun_datar/controller/luasController.dart';

class CalculatorButton extends StatelessWidget {
  final VoidCallback? onPressed;
  void luas;
  CalculatorButton({super.key,required this.onPressed});


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
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
