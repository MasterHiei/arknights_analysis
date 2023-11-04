import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../core/exceptions/app_failure.dart';
import '../../core/providers/connectivity_provider.dart';
import '../../core/types/types.dart';
import '../core/mixins/api_error_handler_mixin.dart';
import 'data_sources/game_data_raw_local_data_source.dart';
import 'data_sources/game_data_raw_remote_data_source.dart';
import 'dtos/gacha_table_dto.dart';

part 'game_data_raw_repository.g.dart';

@riverpod
GameDataRawRepository gameDataRawRepository(GameDataRawRepositoryRef ref) =>
    GameDataRawRepositoryImpl(
      ref.watch(connectivityProvider),
      ref.watch(gameDataRawLocalDataSourceProvider),
      ref.watch(gameDataRawRemoteDataSourceProvider),
    );

abstract class GameDataRawRepository {
  Future<Either<AppFailure, Unit>> fetchAndSaveGachaTable();
}

class GameDataRawRepositoryImpl
    with APIErrorHandlerMixin
    implements GameDataRawRepository {
  const GameDataRawRepositoryImpl(
    this._connectivity,
    this._localDataSource,
    this._remoteDataSource,
  );

  final Connectivity _connectivity;
  final GameDataRawLocalDataSource _localDataSource;
  final GameDataRawRemoteDataSource _remoteDataSource;

  @override
  Future<Either<AppFailure, Unit>> fetchAndSaveGachaTable() => execute(
        () async {
          final source = await _remoteDataSource.fetchGachaTable();
          final dto = GachaTableDto.fromJson(jsonDecode(source) as Json);
          await _localDataSource.saveGachaPools(dto);
          return unit;
        },
        connectivity: _connectivity,
      );
}
