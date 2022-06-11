import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../infrastructure/core/database/app_database.dart';
import 'constants/constants.dart';
import 'interceptors/dio_interceptors.dart';

final _dioProvider = Provider.autoDispose.family((_, String baseUrl) {
  final dio = Dio(
    BaseOptions(
      connectTimeout: httpTimeout,
      receiveTimeout: httpTimeout,
      sendTimeout: httpTimeout,
      baseUrl: baseUrl,
      validateStatus: (code) => code != null && 200 <= code && code < 400,
    ),
  );
  dio.interceptors.addAll(dioInterceptors);
  return dio;
});

final akDioProvider = _dioProvider(akBaseUrl);

final asDioProvider = _dioProvider(asBaseUrl);

final gdDioProvider = _dioProvider(gameDataBaseUrl);

final dbProvider = Provider((ref) {
  final db = AppDatabase();
  ref.onDispose(() => db.close());
  return db;
});

final connectivityProvider = Provider.autoDispose((_) => Connectivity());

Future<List<Override>> generateOverrides() async {
  return [];
}
