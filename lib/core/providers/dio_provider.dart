import 'dart:io';

import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../constants/constants.dart';
import '../interceptors/dio_interceptors.dart';

part 'dio_provider.g.dart';

@riverpod
Dio _dio(_DioRef ref, {required String baseUrl}) {
  final dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      contentType: ContentType.json.toString(),
      validateStatus: (code) =>
          code != null && HttpStatus.ok <= code && code < HttpStatus.badRequest,
    ),
  );
  dio.interceptors.addAll(dioInterceptors);
  return dio;
}

final dioProvider = _DioProvider(baseUrl: '');

final akDioProvider = _dioProvider(baseUrl: Constants.akBaseUrl);

final asDioProvider = _dioProvider(baseUrl: Constants.asBaseUrl);

final gdDioProvider = _dioProvider(baseUrl: Constants.gameDataRawBaseUrl);

final gdApiDioProvider = _dioProvider(baseUrl: Constants.gameDataApiBaseUrl);

final rdApiDioProvider = _dioProvider(baseUrl: Constants.repoDataApiBaseUrl);
