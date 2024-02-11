import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/errors/app_failure.dart';
import '../../../../core/mixins/repository_error_handler_mixin.dart';
import '../../../../core/providers/connectivity_provider.dart';
import '../../../../core/types/types.dart';
import '../../../../core/usecase/params/usecase_params.dart';
import '../../domain/repositories/game_data_repository.dart';
import '../data_sources/game_data_local_data_source.dart';
import '../data_sources/game_data_remote_data_source.dart';
import '../dtos/gacha_table_dto.dart';

part 'game_data_repository_impl.g.dart';

@riverpod
GameDataRepository gameDataRepository(GameDataRepositoryRef ref) =>
    GameDataRepositoryImpl(
      connectivity: ref.watch(connectivityProvider),
      localDataSource: ref.watch(gameDataLocalDataSourceProvider),
      remoteDataSource: ref.watch(gameDataRemoteDataSourceProvider),
    );

final class GameDataRepositoryImpl
    with RepositoryErrorHandlerMixin
    implements GameDataRepository {
  const GameDataRepositoryImpl({
    required this.connectivity,
    required this.localDataSource,
    required this.remoteDataSource,
  });

  final Connectivity connectivity;
  final GameDataLocalDataSource localDataSource;
  final GameDataRemoteDataSource remoteDataSource;

  @override
  TaskEither<AppFailure, Unit> fetch(FetchGameDataParams params) =>
      asyncHandler(
        () async {
          final isEmpty = await localDataSource.isEmpty();
          if (isEmpty || params.force) {
            final source = await remoteDataSource.fetchGachaTable();
            final json = jsonDecode(source) as Json;
            final gachaTable = GachaTableDto.fromJson(json);
            await localDataSource.saveGachaPools(gachaTable.gachaPoolClient);
          }
          return unit;
        },
        connectivity: connectivity,
      );
}
