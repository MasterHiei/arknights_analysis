import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/exceptions/app_failure.dart';
import '../../core/providers.dart';
import '../core/mixins/error_handler_mixin.dart';
import 'data_sources/game_data_local_data_source.dart';
import 'data_sources/game_data_remote_data_source.dart';

final gameDataRepositoryProvider = Provider.autoDispose<GameDataRepository>(
  (ref) => GameDataRepositoryImpl(
    ref.watch(connectivityProvider),
    ref.watch(gameDataLocalDataSourceProvider),
    ref.watch(gameDataRemoteDataSourceProvider),
  ),
);

abstract class GameDataRepository {
  Future<Either<AppFailure, Unit>> fetchAndSaveGachaTable();
}

class GameDataRepositoryImpl
    with ErrorHandlerMixin
    implements GameDataRepository {
  const GameDataRepositoryImpl(
    this._connectivity,
    this._localDataSource,
    this._remoteDataSource,
  );

  final Connectivity _connectivity;
  final GameDataLocalDataSource _localDataSource;
  final GameDataRemoteDataSource _remoteDataSource;

  @override
  Future<Either<AppFailure, Unit>> fetchAndSaveGachaTable() => execute(
        () async {
          final dto = await _remoteDataSource.fetchGachaTable();
          await _localDataSource.saveGachaPools(dto);
          return unit;
        },
        connectivity: _connectivity,
      );
}
