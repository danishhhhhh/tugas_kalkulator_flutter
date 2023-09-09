import 'package:flutter/material.dart';
import 'package:flutter_luas_bangun_datar/controller/luasController.dart';
import '../pages/calculatorPage.dart';

class CalculatorTabbarView extends StatelessWidget {

  CalculatorTabbarView({super.key, required this.controller});
  LuasController controller;

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
              controllerHasil: controller.hasilLuasSegiEmpat,
              indexBangunDatar: 0,
              textHint: ['Panjang', 'Lebar'],
            ),
          ),
          Center(
            child: CalculatorPage(
              image: "images/Trapesium.png",
              title: "Trapesium",
              amountTextField: 3,
              controllerHasil: controller.hasilLuasTrapesium,
              indexBangunDatar: 1,
              textHint: ['Sisi Atas', 'Sisi Bawah', 'Tinggi'],
            ),
          ),
          Center(
            child: CalculatorPage(
              image: "images/JajarGenjang.png",
              title: "Jajar Genjang",
              amountTextField: 2,
              controllerHasil: controller.hasilLuasJajarGenjang,
              indexBangunDatar: 2,
              textHint: ['Alas', 'Tinggi'],
            ),
          ),
          Center(
            child: CalculatorPage(
              image: "images/BelahKetupat.png",
              title: "Belah Ketupat",
              amountTextField: 2,
              controllerHasil: controller.hasilLuasBelahKetupat,
              indexBangunDatar: 3,
              textHint: ['Diagonal 1', 'Diagonal 2'],
            ),
          ),
          Center(
            child: CalculatorPage(
              image: "images/Lingkaran.png",
              title: "Lingkaran",
              amountTextField: 1,
              controllerHasil: controller.hasilLuasLingkaran,
              indexBangunDatar: 4,
              textHint: ['Radius'],
            ),
          ),
        ],
      ),
    );
  }
}
