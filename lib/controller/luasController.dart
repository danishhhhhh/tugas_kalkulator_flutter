import 'package:flutter_luas_bangun_datar/model/rumusClass.dart';
import 'package:get/get.dart';

// class LuasController extends GetxController {
//   final hasilLuasSegiEmpat = RxDouble(0.0);
//   final hasilLuasTrapesium = RxDouble(0.0);
//   final hasilLuasJajarGenjang = RxDouble(0.0);
//   final hasilLuasBelahKetupat = RxDouble(0.0);
//   final hasilLuasLingkaran = RxDouble(0.0);
//   final pi = RxDouble(3.14);
//
//   luasSegiEmpat(double panjang, double lebar) {
//     hasilLuasSegiEmpat.value = panjang * lebar;
//   }
//
//   luasTrapesium(double sisiAtas, double sisiBawah, double tinggi) {
//     hasilLuasTrapesium.value = (sisiAtas + sisiBawah) * tinggi / 2;
//   }
//
//   luasJajarGenjang(double alas, double tinggi) {
//     hasilLuasJajarGenjang.value = alas * tinggi;
//   }
//
//   luasBelahKetupat(double diagonal1, double diagonal2) {
//     hasilLuasBelahKetupat.value = 1 / 2 * diagonal1 * diagonal2;
//   }
//
//   luasLingkaran(double radius) {
//     hasilLuasLingkaran.value = pi * radius * radius;
//   }
// }

//////////////////////////////////////////////////////////////////

class LuasSegiEmpatController extends RumusClass {

  String name = "ini Persegi";
  rumusLuas(List<double> inputNumber) {
    hasilLuas.value = inputNumber[0] * inputNumber[1];
    print("${inputNumber[0]} ${inputNumber[1]} ini Segi empat");
  }
}

class LuasTrapesiumController extends RumusClass {
  String name = "ini Trapesium";
  rumusLuas(List<double> inputNumber) {
    hasilLuas.value = (inputNumber[0] + inputNumber[1]) * inputNumber[2] / 2;
    print("${inputNumber.length}");
    print("${hasilLuas.value}");
  }
}

class LuasJajarGenjangController extends RumusClass {

  String name = "ini JajarGenjang";
  rumusLuas(List<double> inputNumber) {
    hasilLuas.value = inputNumber[0] * inputNumber[1];
    print("${inputNumber[0]} ${inputNumber[1]} ini jajar genjang");
  }
}

class LuasBelahKetupatController extends RumusClass {

  String name = "ini BelahKetupat";
  rumusLuas(List<double> inputNumber) {
    hasilLuas.value = 1 / 2 * inputNumber[0] * inputNumber[1];
    print("${inputNumber[0]} ${inputNumber[1]}");
  }
}

class LuasLingkaranController extends RumusClass {
  final pi = RxDouble(3.14);

  String name = "ini Lingkaran";
  rumusLuas(List<double> inputNumber) {
    hasilLuas.value = pi * inputNumber[0] * inputNumber[0];
    print("${inputNumber[0]}");
  }
}