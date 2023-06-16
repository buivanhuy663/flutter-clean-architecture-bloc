import 'package:flutter/material.dart';

import '../resources/resources.dart';

class AppTheme {
  static ThemeData themeData(Brightness brightness) {
    final colors = brightness == Brightness.light
        ? ColorsDefine.colorsLight
        : ColorsDefine.colorsDark;

    return ThemeData(
      brightness: brightness,
      scaffoldBackgroundColor: colors.background,
      useMaterial3: true,
    );
  }
}
