import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

import '../../../core/errors/app_failure.dart';
import '../../../core/utils/logger.dart';

mixin RepositoryErrorHandlerMixin {
  IOEither<AppFailure, T> syncHandler<T>(T Function() run) => IOEither.tryCatch(
        run,
        (error, stackTrace) {
          logger.e(error, error: error, stackTrace: stackTrace);

          switch (error) {
            case AppFailure():
              return error;

            default:
              return AppFailure.unexpectedError(error);
          }
        },
      );

  TaskEither<AppFailure, T> asyncHandler<T>(
    Future<T> Function() run, {
    Connectivity? connectivity,
  }) =>
      TaskEither.tryCatch(
        () async {
          if (connectivity != null) {
            await _checkConnectivity(connectivity);
          }
          return await run();
        },
        (error, stackTrace) {
          logger.e(error, error: error, stackTrace: stackTrace);

          switch (error) {
            case AppFailure():
              return error;

            case DioException():
              final statusCode = error.response?.statusCode;
              if (statusCode == HttpStatus.unauthorized) {
                return const AppFailure.invalidToken();
              }
              final message = error.response?.statusMessage ?? error.message;
              return AppFailure.remoteServerError(
                code: statusCode,
                message: message,
              );

            default:
              return AppFailure.unexpectedError(error);
          }
        },
      );

  Future<void> _checkConnectivity(Connectivity connectivity) async {
    final result = await connectivity.checkConnectivity();
    if (result == ConnectivityResult.none) {
      throw const AppFailure.networkUnreachable();
    }
  }
}
