import 'package:bot_toast/bot_toast.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:window_manager/window_manager.dart';

import 'core/constants/constants.dart';
import 'core/enums/i18n.dart';
import 'core/routing/router.dart';
import 'core/theme/app_theme.dart';

class ArknightsAnalysisApp extends StatelessWidget {
  const ArknightsAnalysisApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (_, __) => EasyLocalization(
        supportedLocales: I18n.locales,
        path: 'assets/translations',
        fallbackLocale: I18n.defaultLocal,
        useOnlyLangCode: true,
        child: const _MainApp(),
      ),
      designSize: Constants.defaultWindowSize,
    );
  }
}

class _MainApp extends StatelessWidget {
  const _MainApp();

  @override
  Widget build(BuildContext context) {
    return FluentApp.router(
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.light,
      routerConfig: router,
      builder: (_, child) {
        child = VirtualWindowFrameInit()(context, child);
        child = BotToastInit()(context, child);
        return child;
      },
      title: Constants.appName,
      color: Colors.red,
      locale: context.locale,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: I18n.locales,
      debugShowCheckedModeBanner: false,
    );
  }
}
