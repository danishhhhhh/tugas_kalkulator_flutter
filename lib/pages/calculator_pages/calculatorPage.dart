import 'package:flutter/material.dart';
import 'package:flutter_luas_bangun_datar/pages/history_pages/function/historyFuntion.dart';
import 'package:flutter_luas_bangun_datar/pages/calculator_pages/model/rumusClass.dart';
import 'package:flutter_luas_bangun_datar/pages/calculator_pages/widget/calculatorButton.dart';
import 'package:flutter_luas_bangun_datar/pages/calculator_pages/widget/calculatorHeader.dart';
import 'package:flutter_luas_bangun_datar/reuse/calculatorTextField.dart';
import 'package:get/get.dart';
import 'package:collection/collection.dart';
import 'function/calculateFunction.dart';

class CalculatorPage extends StatefulWidget {
  final String image, title;
  final int amountTextField;
  final List<String> textHint;
  final RumusClass rumusController;

  const CalculatorPage({
    super.key,
    required this.image,
    required this.title,
    required this.amountTextField,
    required this.textHint,
    required this.rumusController,
  });

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  List<TextEditingController> textEditingControllers = [];

  @override
  void initState() {
    super.initState();
    textEditingControllers = List.generate(
      widget.amountTextField,
      (index) => TextEditingController(),
    );
    printError(info: "${widget.rumusController}");
  }

  List<CalculatorTextField> buildEditTextFields() {
    return textEditingControllers.mapIndexed((index, controller) {
      String hintText = (index < widget.textHint.length)
          ? widget.textHint[index]
          : 'There No Value';
      return CalculatorTextField(controller: controller, hint: hintText);
    }).toList();
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
                '${widget.rumusController.hasilLuas.value}',
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
              CalculateFunction().Calculate(textEditingControllers, widget.rumusController);
              HistoryFunction().addToHistory(widget.image, widget.title, double.parse("${widget.rumusController.hasilLuas.value}"));
            },
          )
        ],
      ),
    );
  }
}
