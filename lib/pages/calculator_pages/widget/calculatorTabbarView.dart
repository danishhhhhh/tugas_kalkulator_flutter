import 'package:flutter/material.dart';
import 'package:flutter_luas_bangun_datar/pages/calculator_pages/controller/luasController.dart';
import '../calculatorPage.dart';
import 'package:get/get.dart';

class CalculatorTabbarView extends StatelessWidget {

  CalculatorTabbarView({super.key});
  final LuasSegiEmpatController controllerSegiEmpat = Get.find();
  final LuasTrapesiumController controllerTrapesium = Get.find();
  final LuasJajarGenjangController controllerJajarGenjang = Get.find();
  final LuasBelahKetupatController controllerBelahKetupat = Get.find();
  final LuasLingkaranController controllerLingkaran = Get.find();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TabBarView(
        children: <Widget>[
          Center(
            child: CalculatorPage(
              image: "images/Persegi.png",
              title: "Segi Empat",
              amountTextField: 2,
              textHint: ['Panjang', 'Lebar'],
              rumusController:  controllerSegiEmpat,
            ),
          ),
          Center(
            child: CalculatorPage(
              image: "images/Trapesium.png",
              title: "Trapesium",
              amountTextField: 3,
              textHint: ['Sisi Atas', 'Sisi Bawah', 'Tinggi'],
              rumusController:  controllerTrapesium,
            ),
          ),
          Center(
            child: CalculatorPage(
              image: "images/JajarGenjang.png",
              title: "Jajar Genjang",
              amountTextField: 2,
              textHint: ['Alas', 'Tinggi'],
              rumusController:  controllerJajarGenjang,
            ),
          ),
          Center(
            child: CalculatorPage(
              image: "images/BelahKetupat.png",
              title: "Belah Ketupat",
              amountTextField: 2,
              textHint: ['Diagonal 1', 'Diagonal 2'],
              rumusController:  controllerBelahKetupat,
            ),
          ),
          Center(
            child: CalculatorPage(
              image: "images/Lingkaran.png",
              title: "Lingkaran",
              amountTextField: 1,
              textHint: ['Radius'],
              rumusController:  controllerLingkaran,
            ),
          ),
        ],
      ),
    );
  }
}
