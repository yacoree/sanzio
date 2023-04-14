import 'package:flutter/material.dart';

class ThemeManager extends ChangeNotifier {
  //current theme
  ThemeMode _themeMode;

  //constructor
  ThemeManager(this._themeMode);

  //theme getter
  get themeMode => _themeMode;

  //light theme setter
  setLightTheme() {
    _themeMode = ThemeMode.light;
    notifyListeners();
  }

  //dark theme setter
  setDarkTheme() {
    _themeMode = ThemeMode.dark;
    notifyListeners();
  }

  //switch theme
  switchTheme() {
    _themeMode =
        _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }

  //swith theme by bool value
  toggleTheme(bool isDark) {
    _themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}
