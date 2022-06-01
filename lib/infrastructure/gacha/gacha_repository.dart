import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/exceptions/app_failure.dart';
import '../../core/utils/logger.dart';
import '../../domain/user/value_objects/token.dart';
import '../../domain/user/value_objects/uid.dart';
import 'data_sources/gacha_local_data_source.dart';
import 'data_sources/gacha_remote_data_source.dart';

final gachaRepositoryProvider = Provider.autoDispose<GachaRepository>(
  (ref) => GachaRepositoryImpl(
    ref.watch(gachaLocalDataSourceProvider),
    ref.watch(gachaRemoteDataSourceProvider),
  ),
);

abstract class GachaRepository {
  Future<Either<AppFailure, Unit>> fetchAndUpdate(
    Token token, {
    required Uid uid,
    int page = 1,
  });
}

class GachaRepositoryImpl implements GachaRepository {
  const GachaRepositoryImpl(this._localDataSource, this._remoteDataSource);

  final GachaLocalDataSource _localDataSource;
  final GachaRemoteDataSource _remoteDataSource;

  @override
  Future<Either<AppFailure, Unit>> fetchAndUpdate(
    Token token, {
    required Uid uid,
    int page = 1,
  }) async {
    try {
      final response = await _remoteDataSource.fetch(token, page: page);
      final dto = response.data!;
      final list = dto.list.map(
        (record) => record.copyWith(uid: uid.getOrCrash()),
      );
      await _localDataSource.save(dto.copyWith(list: list.toList()));
      return right(unit);
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
