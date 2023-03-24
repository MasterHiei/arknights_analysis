import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as material;

import '../gen/fonts.gen.dart';

class AppTheme {
  const AppTheme._();

  static final light = _themeData.copyWith(brightness: Brightness.light);

  static final dark = _themeData.copyWith(brightness: Brightness.dark);

  static material.ThemeData materialOf(BuildContext context) =>
      material.ThemeData(
        brightness: FluentTheme.of(context).brightness,
        fontFamily: FontFamily.sourceHanSC,
      );

  static final _themeData = FluentThemeData(
    fontFamily: FontFamily.sourceHanSC,
  );
}
