import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final VoidCallback? onPressed;
  void luas;
  CalculatorButton({super.key,required this.onPressed});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          "Hitung",
          style: TextStyle(
            fontFamily: 'LilitaOne',
            color: Color(0xFFF5F8FF),
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF869BDD),
          shape: const RoundedRectangleBorder(
            borderRadius:
            BorderRadius.all(Radius.circular(15)),
          ),
        ),
      ),
    );
  }
}
