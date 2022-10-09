import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as material;

class AppTheme {
  const AppTheme._();

  static const fontFamily = 'SourceHanSC';

  static final light = ThemeData(
    brightness: Brightness.light,
    fontFamily: fontFamily,
  );

  static final dark = ThemeData(
    brightness: Brightness.dark,
    fontFamily: fontFamily,
  );

  static material.ThemeData materialOf(BuildContext context) =>
      material.ThemeData(
        brightness: FluentTheme.of(context).brightness,
        fontFamily: fontFamily,
      );
}
