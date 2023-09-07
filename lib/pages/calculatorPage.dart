import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_luas_bangun_datar/controller/luasController.dart';
import 'package:flutter_luas_bangun_datar/widget/calculatorButton.dart';
import 'package:flutter_luas_bangun_datar/widget/calculatorTextField.dart';
import 'package:get/get.dart';

class CalculatorPage extends StatefulWidget {
  final String image, title;
  final int amountTextField;

  const CalculatorPage(
      {super.key,
      required this.image,
      required this.title,
      required this.amountTextField});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final TextEditingController ctrAlas = TextEditingController();
  final TextEditingController ctrTinggi = TextEditingController();
  final LuasController controller = Get.put(LuasController());

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
                '${controller.hasilLuasSegiEmpat.value.toString()}',
                style: const TextStyle(
                  fontFamily: 'LilitaOne',
                  fontSize: 60,
                  color: Color(0xFFFAFAFA),
                ),
              ),
            ),
          ),
          CalculatorTextField(controller: ctrAlas,),
          CalculatorTextField(controller: ctrTinggi,),
          CalculatorButton(controller: controller, controller1: ctrAlas, controller2: ctrTinggi,),
        ],
      ),
    );
  }
}
