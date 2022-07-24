import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/exceptions/app_failure.dart';
import '../../core/providers.dart';
import '../../domain/user/user.dart';
import '../../domain/user/value_objects/token.dart';
import '../core/common/dtos/token_body_dto.dart';
import '../core/mixins/error_handler_mixin.dart';
import 'data_sources/user_local_data_source.dart';
import 'data_sources/user_remote_data_source.dart';

final userRepositoryProvider = Provider.autoDispose<UserRepository>(
  (ref) => UserRepositoryImpl(
    ref.watch(connectivityProvider),
    ref.watch(userLocalDataSourceProvider),
    ref.watch(userRemoteDataSourceProvider),
  ),
);

abstract class UserRepository {
  Future<Either<AppFailure, User>> get(Token token);

  Future<Either<AppFailure, Unit>> fetchAndUpdate(Token token);
}

class UserRepositoryImpl with ErrorHandlerMixin implements UserRepository {
  const UserRepositoryImpl(
    this._connectivity,
    this._localDataSource,
    this._remoteDataSource,
  );

  final Connectivity _connectivity;
  final UserLocalDataSource _localDataSource;
  final UserRemoteDataSource _remoteDataSource;

  @override
  Future<Either<AppFailure, User>> get(Token token) => execute(
        () async {
          final dto = await _localDataSource.get(token);
          return dto.toDomain();
        },
      );

  @override
  Future<Either<AppFailure, Unit>> fetchAndUpdate(Token token) => execute(
        () async {
          final body = TokenBodyDto(token: token.getOrCrash());
          final response = await _remoteDataSource.request(body);
          final dto = response.data!.copyWith(token: token.getOrCrash());
          await _localDataSource.save(dto);
          return unit;
        },
        connectivity: _connectivity,
      );
}
