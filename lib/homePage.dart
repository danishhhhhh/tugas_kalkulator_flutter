import 'package:flutter/material.dart';
import 'package:flutter_luas_bangun_datar/pages/calculatorPage.dart';
import 'package:flutter_luas_bangun_datar/controller/luasController.dart';

import 'package:get/get.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final LuasController controller = Get.put(LuasController());
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              TabBar(
                dividerColor: Colors.transparent,
                tabs: <Widget>[
                  Tab(
                    icon: Image.asset('images/Persegi.png'),
                  ),
                  Tab(
                    icon: Image.asset('images/Trapesium.png'),
                  ),
                  Tab(
                    icon: Image.asset('images/JajarGenjang.png'),
                  ),
                  Tab(
                    icon: Image.asset('images/BelahKetupat.png'),
                  ),
                  Tab(
                    icon: Image.asset('images/Lingkaran.png'),
                  ),
                ],
              ),
               Expanded(
                child: TabBarView(
                  children: <Widget>[
                    Center(
                      child: CalculatorPage(
                          image: "images/Persegi.png",
                          title: "Persegi",
                          amountTextField: 2,
                        contollervalue: controller.hasilLuasSegiEmpat,
                        indx: 0,
                      ),
                    ),
                    Center(
                      child: CalculatorPage(
                          image: "images/Trapesium.png",
                          title: "Trapesium",
                          amountTextField: 3,
                        contollervalue: controller.hasilLuasTrapesium,
                        indx: 1,
                      ),
                    ),
                    Center(
                      child: CalculatorPage(
                          image: "images/JajarGenjang.png",
                          title: "Jajar Genjang",
                          amountTextField: 2,
                        contollervalue: controller.hasilLuasJajarGenjang,
                        indx: 2,
                      ),
                    ),
                    Center(
                      child: CalculatorPage(
                          image: "images/BelahKetupat.png",
                          title: "Belah Ketupat",
                          amountTextField: 2,
                        contollervalue: controller.hasilLuasBelahKetupat,
                        indx: 3,
                      ),
                    ),
                    Center(
                      child: CalculatorPage(
                          image: "images/Lingkaran.png",
                          title: "Lingkaran",
                          amountTextField: 1,
                        contollervalue: controller.hasilLuasLingkaran,
                        indx: 4,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
