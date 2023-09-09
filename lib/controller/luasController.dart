import 'package:get/get.dart';

class LuasController extends GetxController {
  final hasilLuasSegiEmpat = RxDouble(0.0);
  final hasilLuasTrapesium = RxDouble(0.0);
  final hasilLuasJajarGenjang = RxDouble(0.0);
  final hasilLuasBelahKetupat = RxDouble(0.0);
  final hasilLuasLingkaran = RxDouble(0.0);
  final pi = RxDouble(3.14);

  luasSegiEmpat(double panjang, double lebar) {
    hasilLuasSegiEmpat.value = panjang * lebar;
  }

  luasTrapesium(double sisiAtas, double sisiBawah, double tinggi) {
    hasilLuasTrapesium.value = (sisiAtas + sisiBawah) * tinggi / 2;
  }

  luasJajarGenjang(double alas, double tinggi) {
    hasilLuasJajarGenjang.value = alas * tinggi;
  }

  luasBelahKetupat(double diagonal1, double diagonal2) {
    hasilLuasBelahKetupat.value = 1 / 2 * diagonal1 * diagonal2;
  }

  luasLingkaran(double radius) {
    hasilLuasLingkaran.value = pi * radius * radius;
  }
}
