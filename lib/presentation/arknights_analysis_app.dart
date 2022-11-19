import 'package:bot_toast/bot_toast.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:window_manager/window_manager.dart';

import '../core/constants/constants.dart';
import '../core/enums/i18n.dart';
import '../core/theme/app_theme.dart';
import 'core/routing/router.dart';

class ArknightsAnalysisApp extends StatelessWidget {
  const ArknightsAnalysisApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (_, __) => EasyLocalization(
        supportedLocales: I18n.locales,
        path: 'assets/translations',
        fallbackLocale: I18n.defaultLocal,
        child: const _MainApp(),
      ),
      designSize: defaultWindowSize,
    );
  }
}

class _MainApp extends StatelessWidget {
  const _MainApp();

  @override
  Widget build(BuildContext context) {
    final virtualWindowFrameBuilder = VirtualWindowFrameInit();
    final botToastBuilder = BotToastInit();

    return FluentApp.router(
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.light,
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      builder: (context, child) {
        child = virtualWindowFrameBuilder(context, child);
        child = botToastBuilder(context, child);
        return child;
      },
      title: appName,
      color: Colors.red,
      locale: context.locale,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: I18n.locales,
      debugShowCheckedModeBanner: false,
    );
  }
}
