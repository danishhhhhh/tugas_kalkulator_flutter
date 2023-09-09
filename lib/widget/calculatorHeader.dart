import 'package:flutter/material.dart';

class CalculatorHeader extends StatelessWidget {
  CalculatorHeader({super.key, required this.image, required this.title});

  String image, title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image, height: 250),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            title,
            style: const TextStyle(
              fontFamily: 'LilitaOne',
              fontSize: 30,
              color: Color(0xFF1E1E1E),
            ),
          ),
        ),
      ],
    );
  }
}
