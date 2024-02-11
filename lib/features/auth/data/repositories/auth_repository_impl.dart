import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/common/dtos/token_body_dto.dart';
import '../../../../core/common/value_objects/token.dart';
import '../../../../core/enums/user_channel.dart';
import '../../../../core/errors/app_failure.dart';
import '../../../../core/mixins/repository_error_handler_mixin.dart';
import '../../../../core/providers/connectivity_provider.dart';
import '../../../../core/usecase/params/usecase_params.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/auth_repository.dart';
import '../data_sources/auth_local_data_source.dart';
import '../data_sources/auth_remote_data_source.dart';

part 'auth_repository_impl.g.dart';

@riverpod
AuthRepository authRepository(AuthRepositoryRef ref) => AuthRepositoryImpl(
      ref.watch(connectivityProvider),
      ref.watch(authLocalDataSourceProvider),
      ref.watch(authRemoteDataSourceProvider),
    );

class AuthRepositoryImpl
    with RepositoryErrorHandlerMixin
    implements AuthRepository {
  const AuthRepositoryImpl(
    this._connectivity,
    this._localDataSource,
    this._remoteDataSource,
  );

  final Connectivity _connectivity;
  final AuthLocalDataSource _localDataSource;
  final AuthRemoteDataSource _remoteDataSource;

  @override
  IOEither<AppFailure, UserChannel> getUserChannel(NoParams params) =>
      syncHandler(
        () {
          final id = _localDataSource.getUserChannel();
          return UserChannel.of(id).match(
            (failure) => throw failure,
            (channel) => channel,
          );
        },
      );

  @override
  TaskEither<AppFailure, Unit> cacheUserChannel(
    CacheUserChannelParams params,
  ) =>
      asyncHandler(
        () async {
          await _localDataSource.saveUserChannel(params.channel);
          return unit;
        },
      );

  @override
  IOEither<AppFailure, Token> getToken(NoParams params) => syncHandler(
        () {
          final token = _localDataSource.getToken();
          if (token.isValid()) {
            return token;
          }
          throw const AppFailure.invalidToken();
        },
      );

  @override
  TaskEither<AppFailure, Unit> cacheToken(CacheTokenParams params) =>
      asyncHandler(
        () async {
          await _localDataSource.saveToken(params.token);
          return unit;
        },
      );

  @override
  TaskEither<AppFailure, Unit> fetchUser(FetchUserParams params) =>
      asyncHandler(
        () async {
          final token = params.token.getOrCrash();
          final body = switch (params.channel) {
            UserChannel.official => TokenBodyDto.official(token),
            UserChannel.bilibili => TokenBodyDto.bilibili(token),
          };

          final response = await _remoteDataSource.fetchUser(body);
          final dto = response.data!.copyWith(token: token);
          await _localDataSource.saveUser(dto);
          return unit;
        },
        connectivity: _connectivity,
      );

  @override
  TaskEither<AppFailure, User> getCachedUser(NoParams params) => asyncHandler(
        () async {
          final token = _localDataSource.getToken();
          if (token.isValid()) {
            final dto = await _localDataSource.getUser(token);
            return dto.toDomain();
          }
          throw const AppFailure.invalidToken();
        },
      );
}
