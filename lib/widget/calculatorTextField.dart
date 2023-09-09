import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CalculatorTextField extends StatelessWidget {
  TextEditingController controller;
  String hint;

  CalculatorTextField({super.key, required this.controller, this.hint = "Enter a Number"});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 5,
      ),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 300,
        ),
        child: TextField(
          controller: controller,
          keyboardType: TextInputType.number,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly
          ],
          textAlignVertical: TextAlignVertical.center,
          cursorColor: Color(0xFFFAFAFA),
          cursorRadius: Radius.circular(10),
          style: TextStyle(
            color: Color(0xFFFAFAFA),
            fontSize: 20,
            fontFamily: 'LilitaOne',
          ),
          decoration: InputDecoration(
            hintText: hint,
            isDense: true,
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                width: 3,
                style: BorderStyle.solid,
                color: Color(0xFF7D88AD),
              ),
            ),
            filled: true,
            fillColor: Color(0xFF484F66),
          ),
        ),
      ),
    );
  }
}
