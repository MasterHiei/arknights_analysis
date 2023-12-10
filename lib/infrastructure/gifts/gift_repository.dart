import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../core/enums/ak_login_type.dart';
import '../../core/exceptions/app_failure.dart';
import '../../core/providers/connectivity_provider.dart';
import '../../domain/gifts/exchange_log.dart';
import '../../domain/user/value_objects/token.dart';
import '../../domain/user/value_objects/uid.dart';
import '../core/mixins/repository_error_handler_mixin.dart';
import 'data_sources/gift_local_data_source.dart';
import 'data_sources/gift_remote_data_source.dart';

part 'gift_repository.g.dart';

@riverpod
GiftRepository giftRepository(GiftRepositoryRef ref) => GiftRepositoryImpl(
      ref.watch(connectivityProvider),
      ref.watch(giftLocalDataSourceProvider),
      ref.watch(giftRemoteDataSourceProvider),
    );

abstract class GiftRepository {
  TaskEither<AppFailure, Unit> fetchAndSave(
    Token token, {
    required Uid uid,
    required AkLoginType loginType,
  });

  TaskEither<AppFailure, List<ExchangeLog>> getHistory(Uid uid);
}

class GiftRepositoryImpl
    with RepositoryErrorHandlerMixin
    implements GiftRepository {
  const GiftRepositoryImpl(
    this._connectivity,
    this._localDataSource,
    this._remoteDataSource,
  );

  final Connectivity _connectivity;
  final GiftLocalDataSource _localDataSource;
  final GiftRemoteDataSource _remoteDataSource;

  @override
  TaskEither<AppFailure, Unit> fetchAndSave(
    Token token, {
    required Uid uid,
    required AkLoginType loginType,
  }) =>
      executeAsync(
        () async {
          final response = await _remoteDataSource.fetch(
            token: token.getOrCrash(),
            channelId: loginType.channelId,
          );
          if (response.code != 0) {
            throw AppFailure.remoteServerError(
              code: response.code,
              message: response.msg,
            );
          }
          final logs = response.data.map(
            (log) => log.copyWith(uid: uid.getOrCrash()),
          );
          await _localDataSource.save(logs);
          return unit;
        },
        connectivity: _connectivity,
      );

  @override
  TaskEither<AppFailure, List<ExchangeLog>> getHistory(Uid uid) => executeAsync(
        () async {
          final dtos = await _localDataSource.getLogs(uid);
          return dtos.map((dto) => dto.toDomain()).toList();
        },
      );
}
