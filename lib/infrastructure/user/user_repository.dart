import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/exceptions/app_failure.dart';
import '../../core/utils/logger.dart';
import '../../domain/user/user.dart';
import '../../domain/user/value_objects/token.dart';
import 'data_sources/user_local_data_source.dart';
import 'data_sources/user_remote_data_source.dart';

final userRepositoryProvider = Provider.autoDispose<UserRepository>(
  (ref) => UserRepositoryImpl(
    ref.watch(userLocalDataSourceProvider),
    ref.watch(userRemoteDataSourceProvider),
  ),
);

abstract class UserRepository {
  Future<Either<AppFailure, User>> fetch(Token token);
}

class UserRepositoryImpl implements UserRepository {
  const UserRepositoryImpl(this._localDataSource, this._remoteDataSource);

  final UserLocalDataSource _localDataSource;
  final UserRemoteDataSource _remoteDataSource;

  @override
  Future<Either<AppFailure, User>> fetch(Token token) async {
    try {
      final response = await _remoteDataSource.fetch(token);

      if (response.status == 3) {
        return left(AppFailure.remoteServerError(
          message: response.msg,
          code: response.status,
        ));
      }

      final dto = response.data!.copyWith(token: token.getOrCrash());
      await _localDataSource.save(dto);
      return right(dto.toDomain());
    } on DioError catch (e) {
      logger.e(e);
      return left(const AppFailure.remoteServerError());
    } catch (e) {
      logger.e(e);
      return left(AppFailure.unexpectedError(e));
    }
  }
}
