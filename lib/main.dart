import 'dart:ffi';
import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:ffi/ffi.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:win32/win32.dart';
import 'package:window_manager/window_manager.dart';

import 'core/constants/constants.dart';
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
      size: Constants.defaultWindowSize,
      center: true,
      minimumSize: Constants.minWindowSize,
      skipTaskbar: false,
      title: 'Arknights Analysis',
    );
    windowManager.waitUntilReadyToShow(options, () async {
      await windowManager.show();
      await windowManager.focus();
      await windowManager.setPreventClose(true);
    });
  }

  await EasyLocalization.ensureInitialized();

  if (!await _isWebView2Avaliable()) {
    await Process.run(
      'assets/dependencies/MicrosoftEdgeWebview2Setup.exe',
      ['/install'],
    );
  }

  return ProviderScope(
    overrides: await generateOverrides(),
    child: const ArknightsAnalysisApp(),
  );
}

Future<bool> _isWebView2Avaliable() async {
  final phKey = calloc<HANDLE>();
  final webView2RuntimeRegKey =
      r'SOFTWARE\Microsoft\EdgeUpdate\Clients\{F3017226-FE2A-4295-8BDF-00C3A9A7E4C5}'
          .toNativeUtf16();
  final webView2RuntimeReg64Key =
      r'SOFTWARE\WOW6432Node\Microsoft\EdgeUpdate\Clients\{F3017226-FE2A-4295-8BDF-00C3A9A7E4C5}'
          .toNativeUtf16();

  bool hasRegKey(Pointer<Utf16> regKey) =>
      RegOpenKeyEx(
        HKEY_LOCAL_MACHINE,
        regKey,
        0,
        KEY_READ,
        phKey,
      ) ==
      ERROR_SUCCESS;
  final isAvaliable =
      hasRegKey(webView2RuntimeRegKey) || hasRegKey(webView2RuntimeReg64Key);

  free(phKey);
  free(webView2RuntimeRegKey);
  free(webView2RuntimeReg64Key);

  return isAvaliable;
}
