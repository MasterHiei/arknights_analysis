import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/enums/ak_login_type.dart';
import '../../core/exceptions/app_failure.dart';
import '../../core/providers.dart';
import '../../domain/user/user.dart';
import '../../domain/user/value_objects/token.dart';
import '../core/common/dtos/token_body_bilibili_dto.dart';
import '../core/common/dtos/token_body_official_dto.dart';
import '../core/mixins/api_error_handler_mixin.dart';
import 'data_sources/user_local_data_source.dart';
import 'data_sources/user_remote_data_source.dart';
import 'dtos/user_response_dto.dart';

final userRepositoryProvider = Provider.autoDispose<UserRepository>(
  (ref) => UserRepositoryImpl(
    ref.watch(connectivityProvider),
    ref.watch(userLocalDataSourceProvider),
    ref.watch(userRemoteDataSourceProvider),
  ),
);

abstract class UserRepository {
  Future<Either<AppFailure, User>> get(Token token);

  Future<Either<AppFailure, Unit>> fetchAndUpdate(
    Token token, {
    required AkLoginType loginType,
  });
}

class UserRepositoryImpl with APIErrorHandlerMixin implements UserRepository {
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
  Future<Either<AppFailure, Unit>> fetchAndUpdate(
    Token token, {
    required AkLoginType loginType,
  }) =>
      execute(
        () async {
          late final UserResponseDto response;
          switch (loginType) {
            case AkLoginType.official:
              final body = TokenBodyOfficialDto(token: token.getOrCrash());
              response = await _remoteDataSource.requestOfficial(body);

            case AkLoginType.bilibili:
              final body = TokenBodyBilibiliDto(token: token.getOrCrash());
              response = await _remoteDataSource.requestBilibili(body);
          }
          final dto = response.data!.copyWith(token: token.getOrCrash());
          await _localDataSource.save(dto);
          return unit;
        },
        connectivity: _connectivity,
      );
}
