import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CalculatorTextField extends StatelessWidget {
  CalculatorTextField({super.key, required this.controller});
  TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 5.0),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly
        ],
        style: const TextStyle(
          fontFamily: 'LilitaOne',
          fontSize: 30,
          color: Color(0xFFFAFAFA),
        ),
        decoration: const InputDecoration(
          filled: true,
          fillColor: Color(0xFFA2867B),
        ),
      ),
    );
  }
}
