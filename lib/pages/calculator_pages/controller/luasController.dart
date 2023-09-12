import 'package:flutter_luas_bangun_datar/pages/calculator_pages/model/rumusClass.dart';
import 'package:get/get.dart';

class LuasSegiEmpatController extends RumusClass {

  @override
  rumusLuas(List<double> inputNumber) {
    hasilLuas.value = inputNumber[0] * inputNumber[1];
    print(inputNumber.length);
  }
}

class LuasTrapesiumController extends RumusClass {

  @override
  rumusLuas(List<double> inputNumber) {
    hasilLuas.value = (inputNumber[0] + inputNumber[1]) * inputNumber[2] / 2;
  }
}

class LuasJajarGenjangController extends RumusClass {

  @override
  rumusLuas(List<double> inputNumber) {
    hasilLuas.value = inputNumber[0] * inputNumber[1];
  }
}

class LuasBelahKetupatController extends RumusClass {

  @override
  rumusLuas(List<double> inputNumber) {
    hasilLuas.value = 1 / 2 * inputNumber[0] * inputNumber[1];
  }
}

class LuasLingkaranController extends RumusClass {

  @override
  rumusLuas(List<double> inputNumber) {
    hasilLuas.value = pi * inputNumber[0] * inputNumber[0];
  }
}