import 'package:flutter/material.dart';
import 'package:flutter_luas_bangun_datar/controller/luasController.dart';


class CalculateFunction{
  void Calculate(List<TextEditingController> controllers,int indexBangunDatar,LuasController controller) {
    final values = controllers.map((controller) {
      return double.tryParse(controller.text) ?? 0.0;
    }).toList();

    switch (indexBangunDatar) {
      case 0:
        _hitungLuasSegiEmpat(values,controller);
        break;
      case 1:
        _hitungLuasTrapesium(values,controller);
        break;
      case 2:
        _hitungLuasJajarGenjang(values,controller);
        break;
      case 3:
        _hitungLuasBelahKetupat(values,controller);
        break;
      case 4:
        _hitungLuasLingkaran(values,controller);
        break;
    }
  }

  void _hitungLuasSegiEmpat(List<double> values,LuasController controller) {
    if (values.length >= 2) {
      controller.luasSegiEmpat(values[0], values[1]);
    }
  }
  void _hitungLuasTrapesium(List<double> values,LuasController controller) {
    if (values.length >= 3) {
      controller.luasTrapesium(values[0], values[1],values[2]);
    }
  }

  void _hitungLuasJajarGenjang(List<double> values,LuasController controller) {
    if (values.length >= 2) {
      controller.luasJajarGenjang(values[0], values[1]);
    }
  }

  void _hitungLuasBelahKetupat(List<double> values,LuasController controller) {
    if (values.length >= 2) {
      controller.luasBelahKetupat(values[0], values[1]);
    }
  }

  void _hitungLuasLingkaran(List<double> values,LuasController controller) {
    if (values.length >= 1) {
      controller.luasLingkaran(values[0]);
    }
  }
}