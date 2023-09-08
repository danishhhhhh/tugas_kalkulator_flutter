import 'package:flutter/material.dart';
import 'package:flutter_luas_bangun_datar/controller/luasController.dart';
import 'package:flutter_luas_bangun_datar/widget/calculatorButton.dart';
import 'package:flutter_luas_bangun_datar/widget/calculatorTextField.dart';
import 'package:get/get.dart';
import '../widget/indexluas.dart';

class CalculatorPage extends StatefulWidget {
  final String image, title;
  final int amountTextField;
  final RxDouble? contollervalue;
  final int indx;

  const CalculatorPage({
    super.key,
    required this.image,
    required this.title,
    required this.amountTextField,
    required this.contollervalue,
    required this.indx,
  });

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final LuasController controller = Get.put(LuasController());
  List<TextEditingController> controllers = [];

  var luasIndex = LuasIndex();

  List<Widget> buildEditTextFields() {
    return controllers.map((controller) {
      return CalculatorTextField(controller: controller);
    }).toList();
  }

  @override
  void initState() {
    super.initState();
    controllers = List.generate(
      widget.amountTextField,
      (index) => TextEditingController(),
    );
  }

  @override
  void dispose() {
    controllers.forEach((controller) => controller.dispose());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF383430),
      body: Column(
        children: [
          Image.asset(widget.image),
          Text(widget.title),
          Obx(
            () => Center(
              child: Text(
                '${widget.contollervalue?.value.toString()}',
                style: const TextStyle(
                  fontFamily: 'LilitaOne',
                  fontSize: 60,
                  color: Color(0xFFFAFAFA),
                ),
              ),
            ),
          ),
          ...buildEditTextFields(),
          CalculatorButton(
            onPressed: () {
              luasIndex.Hitung(controllers, widget.indx, controller);
            },
          )
        ],
      ),
    );
  }
}
