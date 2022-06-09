import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../core/exceptions/app_failure.dart';
import '../../../core/utils/logger.dart';

class ErrorHandlerMixin {
  Future<Either<AppFailure, T>> execute<T>(
    Future<T> Function() run,
  ) async {
    try {
      return right(await run());
    } on AppFailure catch (e) {
      return left(e);
    } on DioError catch (e) {
      final code = e.response?.statusCode;
      if (code == HttpStatus.unauthorized) {
        return left(const AppFailure.invalidToken());
      }

      final message = e.response?.statusMessage;
      return left(AppFailure.remoteServerError(message: message, code: code));
    } catch (e, stackTrace) {
      logger.e(e, e, stackTrace);
      return left(AppFailure.unexpectedError(e));
    }
  }
}
