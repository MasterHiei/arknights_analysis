import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';

enum I18n {
  zh(Locale('zh'), '简体中文'),
  ja(Locale('ja'), '日本語');

  const I18n(this.locale, this.name);

  final Locale locale;

  final String name;

  static List<Locale> get locales =>
      I18n.values.map((value) => value.locale).toList();

  static Locale get defaultLocal => I18n.zh.locale;

  Future<void> enable(BuildContext context) async {
    if (context.locale == locale) {
      return;
    }
    await context.setLocale(locale);
    await WidgetsFlutterBinding.ensureInitialized().performReassemble();
  }
}
