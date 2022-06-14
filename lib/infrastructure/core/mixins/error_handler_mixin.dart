import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../core/exceptions/app_failure.dart';
import '../../../core/utils/logger.dart';

class ErrorHandlerMixin {
  Future<Either<AppFailure, T>> execute<T>(
    Future<T> Function() run, {
    Connectivity? connectivity,
  }) async {
    try {
      if (connectivity != null) {
        await _checkConnectivity(connectivity);
      }
      return right(await run());
    } on AppFailure catch (e) {
      return left(e);
    } on DioError catch (e, stackTrace) {
      logger.e(e, e, stackTrace);

      final code = e.response?.statusCode;
      if (code == HttpStatus.unauthorized) {
        return left(const AppFailure.invalidToken());
      }
      final message = e.response?.statusMessage ?? e.message;
      return left(AppFailure.remoteServerError(message: message, code: code));
    } catch (e, stackTrace) {
      logger.e(e, e, stackTrace);
      return left(AppFailure.unexpectedError(e));
    }
  }

  Future<void> _checkConnectivity(Connectivity connectivity) async {
    final result = await connectivity.checkConnectivity();
    if (result == ConnectivityResult.none) {
      throw const AppFailure.networkUnreachable();
    }
  }
}
