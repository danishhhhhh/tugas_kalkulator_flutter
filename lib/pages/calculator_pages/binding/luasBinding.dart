import 'package:get/get.dart';
import '../controller/luasController.dart';

class LuasBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(LuasSegiEmpatController());
    Get.put(LuasTrapesiumController());
    Get.put(LuasJajarGenjangController());
    Get.put(LuasBelahKetupatController());
    Get.put(LuasLingkaranController());
  }

}