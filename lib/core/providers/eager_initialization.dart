import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package_info_provider.dart';
import 'prefs_provider.dart';

Future<List<Override>> generateOverrides() async {
  final prefs = await SharedPreferences.getInstance();
  final packageInfo = await PackageInfo.fromPlatform();
  return [
    prefsProvider.overrideWithValue(prefs),
    packageInfoProvider.overrideWithValue(packageInfo),
  ];
}
