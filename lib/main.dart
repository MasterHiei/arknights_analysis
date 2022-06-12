import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:window_manager/window_manager.dart';

import 'core/providers.dart';
import 'presentation/arknights_analysis_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(await _initializeApp());
}

Future<Widget> _initializeApp() async {
  if (Platform.isLinux || Platform.isMacOS || Platform.isWindows) {
    await windowManager.ensureInitialized();
    const options = WindowOptions(
      size: Size(1920, 1080),
      center: true,
      minimumSize: Size(1280, 720),
      skipTaskbar: false,
      title: 'Arknights Analysis',
    );
    windowManager.waitUntilReadyToShow(options, () async {
      await windowManager.show();
      await windowManager.focus();
    });
  }

  await EasyLocalization.ensureInitialized();

  return ProviderScope(
    overrides: await generateOverrides(),
    child: const ArknightsAnalysisApp(),
  );
}
