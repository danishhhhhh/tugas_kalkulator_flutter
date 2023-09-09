import 'package:flutter/material.dart';
import 'package:flutter_luas_bangun_datar/controller/luasController.dart';
import 'package:flutter_luas_bangun_datar/widget/calculatorTabBar.dart';
import 'package:flutter_luas_bangun_datar/widget/calculatorTabbarView.dart';

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
    return Scaffold(
        backgroundColor: const Color(0xFFE9EEFF),
        body: SafeArea(
          child: DefaultTabController(
            length: 5,
            child: Stack(
              children: [
                Column(
                  children: [
                    const CalculatorTabBar(),
                    CalculatorTabbarView(
                      controller: controller,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: Container(
          child: ElevatedButton(
              onPressed: () {},
              child: Icon(Icons.history, size: 35,),
          style: ElevatedButton.styleFrom(
            minimumSize: Size.zero,
            padding: EdgeInsets.all(10),
          ),),
        ));
  }
}
