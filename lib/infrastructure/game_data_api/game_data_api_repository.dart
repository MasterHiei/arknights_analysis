import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/exceptions/app_failure.dart';
import '../../core/providers.dart';
import '../core/mixins/error_handler_mixin.dart';
import 'data_sources/game_data_api_local_data_source.dart';
import 'data_sources/game_data_api_remote_data_source.dart';

final gameDataApiRepositoryProvider =
    Provider.autoDispose<GameDataApiRepository>(
  (ref) => GameDataRepositoryImpl(
    ref.watch(connectivityProvider),
    ref.watch(gameDataApiLocalDataSourceProvider),
    ref.watch(gameDataApiRemoteDataSourceProvider),
  ),
);

abstract class GameDataApiRepository {
  Future<Either<AppFailure, DateTime>> getLastGachaTableUpdateDateTime();

  Future<Either<AppFailure, DateTime>> fetchLastGachaTableCommitDate();

  Future<Either<AppFailure, Unit>> setLastGachaTableUpdateDateTime(
    DateTime value,
  );
}

class GameDataRepositoryImpl
    with ErrorHandlerMixin
    implements GameDataApiRepository {
  const GameDataRepositoryImpl(
    this._connectivity,
    this._localDataSource,
    this._remoteDataSource,
  );

  final Connectivity _connectivity;
  final GameDataApiLocalDataSource _localDataSource;
  final GameDataApiRemoteDataSource _remoteDataSource;

  @override
  Future<Either<AppFailure, DateTime>> getLastGachaTableUpdateDateTime() =>
      execute(
        () async {
          final formattedString =
              _localDataSource.getLastGachaTableUpdateDateTime();
          final dateTime = DateTime.tryParse(formattedString ?? '');
          if (dateTime == null) {
            throw const AppFailure.emptyLocalData();
          }
          return dateTime;
        },
      );

  @override
  Future<Either<AppFailure, DateTime>> fetchLastGachaTableCommitDate() =>
      execute(
        () async {
          final dtos = await _remoteDataSource.fetchLastGachaTableCommit();
          return dtos.first.commit.committer.date;
        },
        connectivity: _connectivity,
      );

  @override
  Future<Either<AppFailure, Unit>> setLastGachaTableUpdateDateTime(
    DateTime dateTime,
  ) =>
      execute(
        () async {
          final value = dateTime.toIso8601String();
          await _localDataSource.setLastGachaTableUpdateDateTime(value);
          return unit;
        },
      );
}
