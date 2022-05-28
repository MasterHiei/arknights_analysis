import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../infrastructure/user/schemas/t_user.dart';
import 'common/dio_interceptors.dart';
import 'constants/constants.dart';

final _dioProvider = Provider((_) {
  final dio = Dio(
    BaseOptions(
      connectTimeout: httpTimeout,
      receiveTimeout: httpTimeout,
      sendTimeout: httpTimeout,
      validateStatus: (code) => code != null && 200 <= code && code < 400,
    ),
  );
  dio.interceptors.addAll(dioInterceptors);
  return dio;
});

final akDioProvider = Provider((ref) {
  final dio = ref.watch(_dioProvider);
  dio.options.baseUrl = akBaseUrl;
  return dio;
});

final asDioProvider = Provider((ref) {
  final dio = ref.watch(_dioProvider);
  dio.options.baseUrl = asBaseUrl;
  return dio;
});

final isarProvider = Provider<Isar>((_) => throw UnimplementedError());

Future<List<Override>> generateOverrides() async {
  // Database
  final dir = await getApplicationSupportDirectory();
  final isar = await Isar.open(
    name: dbName,
    directory: dir.path,
    schemas: [TUserSchema],
    inspector: kDebugMode,
  );

  return [
    isarProvider.overrideWithValue(isar),
  ];
}
