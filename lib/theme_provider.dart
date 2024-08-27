import 'package:flutter/material.dart';
import 'package:weather/theme.dart';

class ThemeProvider with ChangeNotifier {
  bool _isSelected = false;
  bool get isSelected => _isSelected;

  ThemeData _themeData = ThemeData.light();

  ThemeData get themeData => _themeData;

  void toggleTheme() {
    if (_themeData == lightMode) {
      _themeData = darkMode;
    } else {
      _themeData = lightMode;
    }

    _isSelected = !isSelected;

    notifyListeners();
  }
}
