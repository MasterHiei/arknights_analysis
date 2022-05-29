import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/constants/constants.dart';
import 'core/routing/router.dart';

class ArknightsAnalysis extends StatelessWidget {
  const ArknightsAnalysis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (_, __) => FluentApp.router(
        theme: ThemeData(
          brightness: Brightness.light,
          fontFamily: 'NotoSansSC',
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'NotoSansSC',
        ),
        routeInformationParser: router.routeInformationParser,
        routerDelegate: router.routerDelegate,
        builder: EasyLoading.init(),
        title: appName,
        color: Colors.red,
        debugShowCheckedModeBanner: false,
      ),
      designSize: const Size(1920, 1080),
    );
  }
}
