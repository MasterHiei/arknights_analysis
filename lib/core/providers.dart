import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../infrastructure/core/database/app_database.dart';
import 'constants/constants.dart';
import 'interceptors/dio_interceptors.dart';
import 'utils/file_manager.dart';

final _dioProvider = Provider.autoDispose.family((_, String baseUrl) {
  final dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      contentType: Headers.jsonContentType,
      validateStatus: (code) => code != null && 200 <= code && code < 400,
    ),
  );
  dio.interceptors.addAll(dioInterceptors);
  return dio;
});

final dioProvider = _dioProvider('');

final akDioProvider = _dioProvider(Constants.akBaseUrl);

final asDioProvider = _dioProvider(Constants.asBaseUrl);

final gdDioProvider = _dioProvider(Constants.gameDataRawBaseUrl);

final gdApiDioProvider = _dioProvider(Constants.gameDataApiBaseUrl);

final rdApiDioProvider = _dioProvider(Constants.repoDataApiBaseUrl);

final dbProvider = Provider((ref) {
  final db = AppDatabase();
  ref.onDispose(() => db.close());
  return db;
});

final connectivityProvider = Provider.autoDispose((_) => Connectivity());

final filePickerProvider = Provider.autoDispose((_) => FilePicker.platform);

final fileManagerProvider = Provider.autoDispose((_) => FileManager());

final prefsProvider = Provider.autoDispose<SharedPreferences>(
  (_) => throw UnimplementedError(),
);

final packageInfoProvider = Provider.autoDispose<PackageInfo>(
  (_) => throw UnimplementedError(),
);

Future<List<Override>> generateOverrides() async {
  final prefs = await SharedPreferences.getInstance();
  final packageInfo = await PackageInfo.fromPlatform();
  return [
    prefsProvider.overrideWithValue(prefs),
    packageInfoProvider.overrideWithValue(packageInfo),
  ];
}
