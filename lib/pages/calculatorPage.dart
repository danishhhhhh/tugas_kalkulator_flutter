import 'package:flutter/material.dart';
import 'package:flutter_luas_bangun_datar/controller/luasController.dart';
import 'package:flutter_luas_bangun_datar/model/rumusClass.dart';
import 'package:flutter_luas_bangun_datar/widget/calculatorButton.dart';
import 'package:flutter_luas_bangun_datar/widget/calculatorHeader.dart';
import 'package:flutter_luas_bangun_datar/widget/calculatorTextField.dart';
import 'package:get/get.dart';
import 'package:collection/collection.dart';
import '../function/calculateFunction.dart';

class CalculatorPage extends StatefulWidget {
  final String image, title;
  final int amountTextField;
  final int indexBangunDatar;
  final List<String> textHint;
  final RumusClass test;

  const CalculatorPage({
    super.key,
    required this.image,
    required this.title,
    required this.amountTextField,
    required this.indexBangunDatar,
    required this.textHint,
    required this.test
  });

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  List<TextEditingController> textEditingControllers = [];

  List<Widget> buildEditTextFields() {
    return textEditingControllers.mapIndexed((index, controller) {
      String hintText = (index < widget.textHint.length)
          ? widget.textHint[index]
          : 'There No Value';
      return CalculatorTextField(controller: controller, hint: hintText);
    }).toList();
  }

  @override
  void initState() {
    super.initState();
    textEditingControllers = List.generate(
      widget.amountTextField,
      (index) => TextEditingController(),
    );
    printError(info: "${widget.test}");
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          CalculatorHeader(image: widget.image, title: widget.title),
          Obx(
            () => Center(
              child: Text(
                '${widget.test.hasilLuas}',
                style: const TextStyle(
                  fontFamily: 'LilitaOne',
                  fontSize: 60,
                  color: Color(0xFF1E1E1E),
                ),
              ),
            ),
          ),
          ...buildEditTextFields(),
          CalculatorButton(
            onPressed: () {
              CalculateFunction().Calculate(textEditingControllers, widget.indexBangunDatar, widget.test);
            },
          )
        ],
      ),
    );
  }
}
