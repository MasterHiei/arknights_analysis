import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartx/dartx.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/enums/ak_login_type.dart';
import '../../core/enums/gacha_rule_type.dart';
import '../../core/enums/rarity.dart';
import '../../core/exceptions/app_failure.dart';
import '../../core/providers.dart';
import '../../domain/core/common/pagination.dart';
import '../../domain/gacha/gacha_char.dart';
import '../../domain/gacha/gacha_stats.dart';
import '../../domain/user/value_objects/token.dart';
import '../../domain/user/value_objects/uid.dart';
import '../core/mixins/error_handler_mixin.dart';
import 'data_sources/gacha_local_data_source.dart';
import 'data_sources/gacha_remote_data_source.dart';

final gachaRepositoryProvider = Provider.autoDispose<GachaRepository>(
  (ref) => GachaRepositoryImpl(
    ref.watch(connectivityProvider),
    ref.watch(gachaLocalDataSourceProvider),
    ref.watch(gachaRemoteDataSourceProvider),
  ),
);

abstract class GachaRepository {
  Future<Either<AppFailure, Pagination>> fetchAndSave(
    Token token, {
    required Uid uid,
    int page = 1,
    required AkLoginType loginType,
  });

  Future<Either<AppFailure, List<String>>> getPools({
    required Uid uid,
    List<GachaRuleType>? includeRuleTypes,
    List<GachaRuleType>? excludeRuleTypes,
  });

  Future<Either<AppFailure, GachaStats>> getStats(
    Uid uid, {
    String? pool,
    List<GachaRuleType>? includeRuleTypes,
    List<GachaRuleType>? excludeRuleTypes,
  });

  Future<Either<AppFailure, List<GachaChar>>> getHistory(
    Uid uid, {
    required bool showAllPools,
    required List<String> pools,
    required List<Rarity> rarities,
  });
}

class GachaRepositoryImpl with ErrorHandlerMixin implements GachaRepository {
  const GachaRepositoryImpl(
    this._connectivity,
    this._localDataSource,
    this._remoteDataSource,
  );

  final Connectivity _connectivity;
  final GachaLocalDataSource _localDataSource;
  final GachaRemoteDataSource _remoteDataSource;

  @override
  Future<Either<AppFailure, Pagination>> fetchAndSave(
    Token token, {
    required Uid uid,
    int page = 1,
    required AkLoginType loginType,
  }) =>
      execute(
        () async {
          late final String? channelId;
          switch (loginType) {
            case AkLoginType.official:
              channelId = null;
              break;

            case AkLoginType.bilibili:
              channelId = '2';
              break;
          }
          final response = await _remoteDataSource.fetch(
            token: token.getOrCrash(),
            page: page,
            channelId: channelId,
          );
          final dto = response.data;
          if (dto == null) {
            throw AppFailure.remoteServerError(
              message: response.msg,
              code: response.code,
            );
          }
          final list = dto.list.map(
            (record) => record.copyWith(uid: uid.getOrCrash()),
          );
          await _localDataSource.save(dto.copyWith(list: list.toList()));
          return dto.pagination.toDomain();
        },
        connectivity: _connectivity,
      );

  @override
  Future<Either<AppFailure, List<String>>> getPools({
    required Uid uid,
    List<GachaRuleType>? includeRuleTypes,
    List<GachaRuleType>? excludeRuleTypes,
  }) =>
      execute(
        () => _localDataSource.getPools(
          uid: uid,
          includeRuleTypes: includeRuleTypes,
          excludeRuleTypes: excludeRuleTypes,
        ),
      );

  @override
  Future<Either<AppFailure, GachaStats>> getStats(
    Uid uid, {
    String? pool,
    List<GachaRuleType>? includeRuleTypes,
    List<GachaRuleType>? excludeRuleTypes,
  }) =>
      execute(
        () async {
          final showAllPools = pool == null;
          final pools = showAllPools ? <String>[] : [pool];
          final dtos = await _localDataSource.getRecords(
            uid,
            showAllPools: showAllPools,
            pools: pools,
            includeRuleTypes: includeRuleTypes,
            excludeRuleTypes: excludeRuleTypes,
          );
          final chars = dtos
              .map((dto) => dto.toDomain())
              .map((record) => record.chars)
              .flatten()
              .toList();
          return GachaStats(uid: uid, chars: chars);
        },
      );

  @override
  Future<Either<AppFailure, List<GachaChar>>> getHistory(
    Uid uid, {
    required bool showAllPools,
    required List<String> pools,
    required List<Rarity> rarities,
  }) =>
      execute(
        () async {
          final dtos = await _localDataSource.getRecords(
            uid,
            showAllPools: showAllPools,
            pools: pools,
          );
          return dtos
              .map((dto) => dto.toDomain())
              .map((record) => record.chars)
              .flatten()
              .filter((char) => rarities.contains(char.rarity))
              .toList();
        },
      );
}
