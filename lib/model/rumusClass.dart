import 'package:get/get.dart';

abstract class RumusClass extends GetxController {
  String name = "";
  final hasilLuas = RxDouble(0.0);
  final pi = RxDouble(3.14);


  rumusLuas(List<double> values);
}