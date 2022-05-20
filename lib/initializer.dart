import 'dart:io';

import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

Future<void> initializeApp() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isLinux || Platform.isMacOS || Platform.isWindows) {
    await windowManager.ensureInitialized();
    final options = WindowOptions(
      size: const Size(1920, 1080),
      center: true,
      minimumSize: const Size(1280, 720),
      skipTaskbar: false,
      title: 'Arknights Analysis',
    );
    windowManager.waitUntilReadyToShow(options, () async {
      await windowManager.show();
      await windowManager.focus();
    });
  }
}
