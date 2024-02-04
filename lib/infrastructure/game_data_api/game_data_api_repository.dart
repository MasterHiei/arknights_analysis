import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../core/errors/app_failure.dart';
import '../../core/providers/connectivity_provider.dart';
import '../core/mixins/repository_error_handler_mixin.dart';
import 'data_sources/game_data_api_local_data_source.dart';
import 'data_sources/game_data_api_remote_data_source.dart';

part 'game_data_api_repository.g.dart';

@riverpod
GameDataApiRepository gameDataApiRepository(GameDataApiRepositoryRef ref) =>
    GameDataApiRepositoryImpl(
      ref.watch(connectivityProvider),
      ref.watch(gameDataApiLocalDataSourceProvider),
      ref.watch(gameDataApiRemoteDataSourceProvider),
    );

abstract class GameDataApiRepository {
  TaskEither<AppFailure, DateTime> getLastGachaTableUpdateDateTime();

  TaskEither<AppFailure, DateTime> fetchLastGachaTableCommitDateTime();

  TaskEither<AppFailure, Unit> setLastGachaTableUpdateDateTime(
    DateTime value,
  );
}

class GameDataApiRepositoryImpl
    with RepositoryErrorHandlerMixin
    implements GameDataApiRepository {
  const GameDataApiRepositoryImpl(
    this._connectivity,
    this._localDataSource,
    this._remoteDataSource,
  );

  final Connectivity _connectivity;
  final GameDataApiLocalDataSource _localDataSource;
  final GameDataApiRemoteDataSource _remoteDataSource;

  @override
  TaskEither<AppFailure, DateTime> getLastGachaTableUpdateDateTime() =>
      executeAsync(
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
  TaskEither<AppFailure, DateTime> fetchLastGachaTableCommitDateTime() =>
      executeAsync(
        () async {
          final dtos = await _remoteDataSource.fetchLastGachaTableCommit();
          return dtos.first.commit.committer.date;
        },
        connectivity: _connectivity,
      );

  @override
  TaskEither<AppFailure, Unit> setLastGachaTableUpdateDateTime(
    DateTime dateTime,
  ) =>
      executeAsync(
        () async {
          final value = dateTime.toIso8601String();
          await _localDataSource.setLastGachaTableUpdateDateTime(value);
          return unit;
        },
      );
}
