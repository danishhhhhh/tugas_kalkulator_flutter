import 'package:flutter/material.dart';
import 'package:flutter_luas_bangun_datar/pages/calculatorPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              const Expanded(
                child: TabBarView(
                  children: <Widget>[
                    Center(
                      child: CalculatorPage(
                          image: "images/Persegi.png",
                          title: "Persegi",
                          amountTextField: 3),
                    ),
                    Center(
                      child: CalculatorPage(
                          image: "images/Trapesium.png",
                          title: "Trapesium",
                          amountTextField: 4),
                    ),
                    Center(
                      child: CalculatorPage(
                          image: "images/JajarGenjang.png",
                          title: "Jajar Genjang",
                          amountTextField: 4),
                    ),
                    Center(
                      child: CalculatorPage(
                          image: "images/BelahKetupat.png",
                          title: "Belah Ketupat",
                          amountTextField: 6),
                    ),
                    Center(
                      child: CalculatorPage(
                          image: "images/Lingkaran.png",
                          title: "Lingkaran",
                          amountTextField: 1),
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
