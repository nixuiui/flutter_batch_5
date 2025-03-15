import 'package:flutter_batch_5/pages/day5/home_screen.dart';
import 'package:flutter_batch_5/pages/day5/setting_screen.dart';

class AppRoutes {
  static String home = '/home';
  static String setting = '/setting-screen';
}

final routes = {
  AppRoutes.home: (context) => HomeScreen(),
  AppRoutes.setting: (context) => SettingScreen()
};