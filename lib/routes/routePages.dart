import 'package:flutter_luas_bangun_datar/pages/calculator_pages/homePage.dart';
import 'package:flutter_luas_bangun_datar/pages/history_pages/historyPage.dart';
import 'package:flutter_luas_bangun_datar/pages/splash_screen_page/splashScreenPage.dart';
import 'package:get/get.dart';

List<GetPage> routes = [
  GetPage(
    name: '/',
    page: () => const SplashScreenPage(),
  ),
  GetPage(
    name: '/homePage',
    page: () => const HomePage(),
  ),
  GetPage(
    name: '/historyPage',
    page: () => HistoryPage(),
  ),
];