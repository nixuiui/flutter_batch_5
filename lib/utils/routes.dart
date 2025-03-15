import 'package:flutter_batch_5/pages/day5/bottom_nav_bar_screen.dart';
import 'package:flutter_batch_5/pages/day5/home_screen.dart';
import 'package:flutter_batch_5/pages/day5/setting_screen.dart';
import 'package:flutter_batch_5/pages/day5/tab_screen.dart';

class AppRoutes {
  static String home = '/home';
  static String setting = '/setting-screen';
  static String bottomNavBar = '/bottom-nav-screen';
  static String tab = '/tab-screen';
}

final routes = {
  AppRoutes.home: (context) => HomeScreen(),
  AppRoutes.setting: (context) => SettingScreen(),
  AppRoutes.bottomNavBar: (context) => BottomNavBarScreen(),
  AppRoutes.tab: (context) => TabScreen()
};