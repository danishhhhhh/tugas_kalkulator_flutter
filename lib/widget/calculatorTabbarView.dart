import 'package:flutter/material.dart';
import 'package:flutter_luas_bangun_datar/controller/luasController.dart';
import '../pages/calculatorPage.dart';
import 'package:get/get.dart';

class CalculatorTabbarView extends StatelessWidget {

  CalculatorTabbarView({super.key});
  final LuasSegiEmpatController controllerSegiEmpat = Get.put(LuasSegiEmpatController());
  final LuasTrapesiumController controllerTrapesium = Get.put(LuasTrapesiumController());
  final LuasJajarGenjangController controllerJajarGenjang = Get.put(LuasJajarGenjangController());
  final LuasBelahKetupatController controllerBelahKetupat = Get.put(LuasBelahKetupatController());
  final LuasLingkaranController controllerLingkaran = Get.put(LuasLingkaranController());

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TabBarView(
        children: <Widget>[
          Center(
            child: CalculatorPage(
              image: "images/Persegi.png",
              title: "Persegi",
              amountTextField: 2,
              indexBangunDatar: 0,
              textHint: ['Panjang', 'Lebar'],
              test:  controllerSegiEmpat,
            ),
          ),
          Center(
            child: CalculatorPage(
              image: "images/Trapesium.png",
              title: "Trapesium",
              amountTextField: 3,
              indexBangunDatar: 1,
              textHint: ['Sisi Atas', 'Sisi Bawah', 'Tinggi'],
              test:  controllerTrapesium,
            ),
          ),
          Center(
            child: CalculatorPage(
              image: "images/JajarGenjang.png",
              title: "Jajar Genjang",
              amountTextField: 2,
              indexBangunDatar: 2,
              textHint: ['Alas', 'Tinggi'],
              test:  controllerJajarGenjang,
            ),
          ),
          Center(
            child: CalculatorPage(
              image: "images/BelahKetupat.png",
              title: "Belah Ketupat",
              amountTextField: 2,
              indexBangunDatar: 3,
              textHint: ['Diagonal 1', 'Diagonal 2'],
              test:  controllerBelahKetupat,
            ),
          ),
          Center(
            child: CalculatorPage(
              image: "images/Lingkaran.png",
              title: "Lingkaran",
              amountTextField: 1,
              indexBangunDatar: 4,
              textHint: ['Radius'],
              test:  controllerLingkaran,
            ),
          ),
        ],
      ),
    );
  }
}
