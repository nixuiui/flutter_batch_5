import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeLocalStorage {

  late final SharedPreferences sharedPreferences;

  ThemeLocalStorage(this.sharedPreferences);

  Future<void> setThemeMode(ThemeMode themeMode) async {
    await sharedPreferences.setString('theme_mode', themeMode.name);
  }

  ThemeMode getThemeMode() {
    final themeModeName = sharedPreferences.getString('theme_mode');
    return {
      'light': ThemeMode.light,
      'dark': ThemeMode.dark,
    }[themeModeName] ?? ThemeMode.system;
  }

}