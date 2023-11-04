import 'dart:io';

import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../constants/constants.dart';
import '../interceptors/dio_interceptors.dart';

part 'dio_provider.g.dart';

@riverpod
Dio akDio(AkDioRef ref) => ref.watch(dioProvider(baseUrl: Constants.akBaseUrl));

@riverpod
Dio asDio(AsDioRef ref) => ref.watch(dioProvider(baseUrl: Constants.asBaseUrl));

@riverpod
Dio gdDio(GdDioRef ref) =>
    ref.watch(dioProvider(baseUrl: Constants.gameDataRawBaseUrl));

@riverpod
Dio gdApiDio(GdApiDioRef ref) =>
    ref.watch(dioProvider(baseUrl: Constants.gameDataApiBaseUrl));

@riverpod
Dio rdApiDio(RdApiDioRef ref) =>
    ref.watch(dioProvider(baseUrl: Constants.repoDataApiBaseUrl));

@riverpod
Dio dio(DioRef ref, {String baseUrl = ''}) {
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
