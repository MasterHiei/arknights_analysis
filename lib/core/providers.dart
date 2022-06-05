import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../infrastructure/core/database/app_database.dart';
import 'common/dio_interceptors.dart';
import 'constants/constants.dart';

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

final dbProvider = Provider((ref) {
  final db = AppDatabase();
  ref.onDispose(() => db.close());
  return db;
});

Future<List<Override>> generateOverrides() async {
  return [];
}
