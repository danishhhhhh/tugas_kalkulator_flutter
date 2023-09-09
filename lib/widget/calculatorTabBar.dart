import 'package:flutter/material.dart';

class CalculatorTabBar extends StatelessWidget {
  const CalculatorTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      splashFactory: NoSplash.splashFactory,
      isScrollable: true,
      dividerColor: Colors.transparent,
      unselectedLabelColor: const Color(0xFFB6B6B6),
      unselectedLabelStyle: TextStyle(fontFamily: 'LilitaOne',),
      labelStyle: TextStyle(fontFamily: 'LilitaOne',),
      labelColor: const Color(0xFFFFFFFF),
      indicator: BoxDecoration(
        color: const Color(0xFFC9D3F6),
        border: Border.all(
          width: 3,
          color: const Color(0xFFC2CEF4),
        ),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      padding: EdgeInsets.all(10),
      labelPadding: EdgeInsets.symmetric(horizontal: 5),
      tabs: const <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Tab(
            text: 'Segi Empat',
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Tab(
            text: 'Trapesium',
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Tab(
            text: 'Jajar Genjang',
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Tab(
            text: 'Belah Ketupat',
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Tab(
            text: 'Lingkaran',
          ),
        ),
      ],
    );
  }
}
