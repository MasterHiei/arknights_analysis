import 'package:flutter/cupertino.dart';

enum I18n {
  zhCN(Locale('zh'));

  const I18n(this.locale);

  final Locale locale;

  static List<Locale> get locales =>
      I18n.values.map((value) => value.locale).toList();

  static Locale get defaultLocal => I18n.zhCN.locale;
}
