import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';

enum I18n {
  zh(Locale('zh'), '简体中文'),
  ja(Locale('ja'), '日本語');

  const I18n(this.locale, this.language);

  final Locale locale;

  final String language;

  static List<Locale> get locales =>
      I18n.values.map((value) => value.locale).toList();

  static Locale get defaultLocal => I18n.zh.locale;

  void enable(BuildContext context) => context.setLocale(locale);
}
