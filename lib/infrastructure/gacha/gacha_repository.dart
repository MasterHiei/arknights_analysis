import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../core/enums/ak_login_type.dart';
import '../../core/enums/gacha_rule_type.dart';
import '../../core/enums/rarity.dart';
import '../../core/exceptions/app_failure.dart';
import '../../core/providers/connectivity_provider.dart';
import '../../domain/core/common/pagination.dart';
import '../../domain/gacha/gacha_char.dart';
import '../../domain/gacha/gacha_pool.dart';
import '../../domain/gacha/gacha_stats.dart';
import '../../domain/user/value_objects/token.dart';
import '../../domain/user/value_objects/uid.dart';
import '../core/mixins/repository_error_handler_mixin.dart';
import 'data_sources/gacha_local_data_source.dart';
import 'data_sources/gacha_remote_data_source.dart';

part 'gacha_repository.g.dart';

@riverpod
GachaRepository gachaRepository(GachaRepositoryRef ref) => GachaRepositoryImpl(
      ref.watch(connectivityProvider),
      ref.watch(gachaLocalDataSourceProvider),
      ref.watch(gachaRemoteDataSourceProvider),
    );

abstract class GachaRepository {
  TaskEither<AppFailure, Pagination> fetchAndSave(
    Token token, {
    required Uid uid,
    int page = 1,
    required AkLoginType loginType,
  });

  TaskEither<AppFailure, List<String>> getRecordedPools({
    required Uid uid,
    Iterable<GachaRuleType> includeRuleTypes = const Iterable.empty(),
    Iterable<GachaRuleType> excludeRuleTypes = const Iterable.empty(),
    bool includeClassics = true,
  });

  TaskEither<AppFailure, GachaPool?> getPoolByName(String name);

  TaskEither<AppFailure, GachaStats> getStats(
    Uid uid, {
    required List<String> pools,
    required Iterable<GachaRuleType> includeRuleTypes,
    required Iterable<GachaRuleType> excludeRuleTypes,
  });

  TaskEither<AppFailure, List<GachaChar>> getHistory(
    Uid uid, {
    required bool showAllPools,
    required List<String> pools,
    required List<Rarity> rarities,
  });
}

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
  TaskEither<AppFailure, Pagination> fetchAndSave(
    Token token, {
    required Uid uid,
    int page = 1,
    required AkLoginType loginType,
  }) =>
      executeAsync(
        () async {
          final response = await _remoteDataSource.fetch(
            token: token.getOrCrash(),
            page: page,
            channelId: loginType.channelId,
          );
          final dto = response.data;
          if (dto == null) {
            throw AppFailure.remoteServerError(
              code: response.code,
              message: response.msg,
            );
          }
          final records = dto.records.map(
            (record) => record.copyWith(uid: uid.getOrCrash()),
          );
          await _localDataSource.save(dto.copyWith(records: records.toList()));
          return dto.pagination.toDomain();
        },
        connectivity: _connectivity,
      );

  @override
  TaskEither<AppFailure, List<String>> getRecordedPools({
    required Uid uid,
    Iterable<GachaRuleType> includeRuleTypes = const Iterable.empty(),
    Iterable<GachaRuleType> excludeRuleTypes = const Iterable.empty(),
    bool includeClassics = true,
  }) =>
      executeAsync(
        () => _localDataSource.getRecordedPools(
          uid: uid,
          includeRuleTypes: includeRuleTypes,
          excludeRuleTypes: excludeRuleTypes,
          includeClassics: includeClassics,
        ),
      );

  @override
  TaskEither<AppFailure, GachaPool?> getPoolByName(String name) => executeAsync(
        () async {
          final dto = await _localDataSource.getPoolByName(name);
          return dto?.toDomain();
        },
      );

  @override
  TaskEither<AppFailure, GachaStats> getStats(
    Uid uid, {
    required List<String> pools,
    required Iterable<GachaRuleType> includeRuleTypes,
    required Iterable<GachaRuleType> excludeRuleTypes,
  }) =>
      executeAsync(
        () async {
          final showAllPools = pools.isEmpty;
          final dtos = await _localDataSource.getRecords(
            uid,
            showAllPools: showAllPools,
            pools: showAllPools ? [] : pools,
            includeRuleTypes: includeRuleTypes,
            excludeRuleTypes: excludeRuleTypes,
          );
          final chars = dtos
              .map((dto) => dto.toDomain())
              .map((record) => record.chars)
              .flatten
              .toList();
          return GachaStats(uid: uid, chars: chars);
        },
      );

  @override
  TaskEither<AppFailure, List<GachaChar>> getHistory(
    Uid uid, {
    required bool showAllPools,
    required List<String> pools,
    required List<Rarity> rarities,
  }) =>
      executeAsync(
        () async {
          final dtos = await _localDataSource.getRecords(
            uid,
            showAllPools: showAllPools,
            pools: pools,
          );
          return dtos
              .map((dto) => dto.toDomain())
              .map((record) => record.chars)
              .flatten
              .filter((char) => rarities.contains(char.rarity))
              .toList();
        },
      );
}
