import 'package:dartx/dartx.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/exceptions/app_failure.dart';
import '../../domain/core/common/pagination.dart';
import '../../domain/gacha/gacha.dart';
import '../../domain/gacha/gacha_stats.dart';
import '../../domain/user/value_objects/token.dart';
import '../../domain/user/value_objects/uid.dart';
import '../core/mixins/error_handler_mixin.dart';
import 'data_sources/gacha_local_data_source.dart';
import 'data_sources/gacha_remote_data_source.dart';

final gachaRepositoryProvider = Provider.autoDispose<GachaRepository>(
  (ref) => GachaRepositoryImpl(
    ref.watch(gachaLocalDataSourceProvider),
    ref.watch(gachaRemoteDataSourceProvider),
  ),
);

abstract class GachaRepository {
  Future<Either<AppFailure, Pagination>> fetchAndSave(
    Token token, {
    required Uid uid,
    int page = 1,
  });

  Future<Either<AppFailure, Gacha>> read(
    Uid uid, {
    required int page,
  });

  Stream<GachaStats> watchStats(Uid uid);
}

class GachaRepositoryImpl with ErrorHandlerMixin implements GachaRepository {
  const GachaRepositoryImpl(this._localDataSource, this._remoteDataSource);

  final GachaLocalDataSource _localDataSource;
  final GachaRemoteDataSource _remoteDataSource;

  @override
  Future<Either<AppFailure, Pagination>> fetchAndSave(
    Token token, {
    required Uid uid,
    int page = 1,
  }) =>
      execute(() async {
        final response = await _remoteDataSource.fetch(
          token: token.getOrCrash(),
          page: page,
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
      });

  @override
  Future<Either<AppFailure, Gacha>> read(
    Uid uid, {
    required int page,
  }) =>
      execute(() async {
        final dto = await _localDataSource.read(uid, page: page);
        return dto.toDomain();
      });

  @override
  Stream<GachaStats> watchStats(Uid uid) => _localDataSource
      .watchRecords(uid)
      .map((dtos) => dtos.map((dto) => dto.toDomain()).toList())
      .map((records) => records.map((record) => record.chars).flatten())
      .map((chars) => GachaStats(uid: uid, chars: chars.toList()));
}
