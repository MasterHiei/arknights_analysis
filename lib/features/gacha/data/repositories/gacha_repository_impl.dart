import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/common/pagination.dart';
import '../../../../core/errors/app_failure.dart';
import '../../../../core/mixins/repository_error_handler_mixin.dart';
import '../../../../core/providers/connectivity_provider.dart';
import '../../../../core/usecase/params/usecase_params.dart';
import '../../domain/entities/gacha_char.dart';
import '../../domain/entities/gacha_pool.dart';
import '../../domain/entities/gacha_stats.dart';
import '../../domain/repositories/gacha_repository.dart';
import '../data_sources/gacha_local_data_source.dart';
import '../data_sources/gacha_remote_data_source.dart';

part 'gacha_repository_impl.g.dart';

@riverpod
GachaRepository gachaRepository(GachaRepositoryRef ref) => GachaRepositoryImpl(
      ref.watch(connectivityProvider),
      ref.watch(gachaLocalDataSourceProvider),
      ref.watch(gachaRemoteDataSourceProvider),
    );

class GachaRepositoryImpl
    with RepositoryErrorHandlerMixin
    implements GachaRepository {
  const GachaRepositoryImpl(
    this._connectivity,
    this._localDataSource,
    this._remoteDataSource,
  );

  final Connectivity _connectivity;
  final GachaLocalDataSource _localDataSource;
  final GachaRemoteDataSource _remoteDataSource;

  @override
  TaskEither<AppFailure, Pagination> fetchHistory(
    FetchGachaHistoryParams params,
  ) =>
      asyncHandler(
        () async {
          final response = await _remoteDataSource.fetch(
            token: params.token.getOrCrash(),
            page: params.page,
            channelId: params.channel.id,
          );
          final dto = response.data;
          if (dto == null) {
            throw AppFailure.remoteServerError(
              code: response.code,
              message: response.msg,
            );
          }
          final records = dto.records.map(
            (record) => record.copyWith(uid: params.uid.getOrCrash()),
          );
          await _localDataSource.save(dto.copyWith(records: records.toList()));
          return dto.pagination.toDomain();
        },
        connectivity: _connectivity,
      );

  @override
  TaskEither<AppFailure, List<String>> getRecordedPools(
    GetRecordedGachaPoolsParams params,
  ) =>
      asyncHandler(
        () => _localDataSource.getRecordedPools(
          uid: params.uid,
          includeRuleTypes: params.includeRuleTypes,
          excludeRuleTypes: params.excludeRuleTypes,
          includeClassics: params.includeClassics,
        ),
      );

  @override
  TaskEither<AppFailure, GachaPool> getPool(
    GetGachaPoolParams params,
  ) =>
      asyncHandler(
        () async {
          final dto = await _localDataSource.getPoolByName(params.poolName);
          return switch (dto) {
            null => throw const AppFailure.emptyLocalData(),
            _ => dto.toDomain(),
          };
        },
      );

  @override
  TaskEither<AppFailure, GachaStats> getStats(
    GetGachaStatsParams params,
  ) =>
      asyncHandler(
        () async {
          final showAllPools = params.pools.isEmpty;
          final dtos = await _localDataSource.getRecords(
            params.uid,
            showAllPools: showAllPools,
            pools: showAllPools ? [] : params.pools,
            excludePools: params.excludePools,
            includeRuleTypes: params.includeRuleTypes,
            excludeRuleTypes: params.excludeRuleTypes,
          );
          final chars = dtos
              .map((dto) => dto.toDomain())
              .map((record) => record.chars)
              .flatten
              .toList();
          return GachaStats(uid: params.uid, chars: chars);
        },
      );

  @override
  TaskEither<AppFailure, List<GachaChar>> getHistory(
    GetCachedGachaHistoryParams params,
  ) =>
      asyncHandler(
        () async {
          final dtos = await _localDataSource.getRecords(
            params.uid,
            showAllPools: params.showAllPools,
            pools: params.pools,
          );
          return dtos
              .map((dto) => dto.toDomain())
              .map((record) => record.chars)
              .flatten
              .filter((char) => params.rarities.contains(char.rarity))
              .toList();
        },
      );
}
