import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartx/dartx.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/enums/ak_login_type.dart';
import '../../core/exceptions/app_failure.dart';
import '../../core/providers.dart';
import '../../domain/core/common/pagination.dart';
import '../../domain/diamonds/diamond_change.dart';
import '../../domain/user/value_objects/token.dart';
import '../../domain/user/value_objects/uid.dart';
import '../core/mixins/api_error_handler_mixin.dart';
import 'data_sources/diamond_local_data_source.dart';
import 'data_sources/diamond_remote_data_source.dart';

final diamondRepositoryProvider = Provider.autoDispose<DiamondRepository>(
  (ref) => DiamondRepositoryImpl(
    ref.watch(connectivityProvider),
    ref.watch(diamondLocalDataSourceProvider),
    ref.watch(diamondRemoteDataSourceProvider),
  ),
);

abstract class DiamondRepository {
  Future<Either<AppFailure, Pagination>> fetchAndSave(
    Token token, {
    required Uid uid,
    int page = 1,
    required AkLoginType loginType,
  });

  Future<Either<AppFailure, List<DiamondChange>>> getHistory(Uid uid);
}

class DiamondRepositoryImpl
    with APIErrorHandlerMixin
    implements DiamondRepository {
  const DiamondRepositoryImpl(
    this._connectivity,
    this._localDataSource,
    this._remoteDataSource,
  );

  final Connectivity _connectivity;
  final DiamondLocalDataSource _localDataSource;
  final DiamondRemoteDataSource _remoteDataSource;

  @override
  Future<Either<AppFailure, Pagination>> fetchAndSave(
    Token token, {
    required Uid uid,
    int page = 1,
    required AkLoginType loginType,
  }) =>
      execute(
        () async {
          final response = await _remoteDataSource.fetch(
            token: token.getOrCrash(),
            page: page,
            channelId: loginType.channelId,
          );
          final dto = response.data;
          if (dto == null) {
            throw AppFailure.remoteServerError(
              message: response.msg,
              code: response.code,
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
  Future<Either<AppFailure, List<DiamondChange>>> getHistory(Uid uid) =>
      execute(
        () async {
          final dtos = await _localDataSource.getRecords(uid);
          return dtos
              .map((dto) => dto.toDomain())
              .map((record) => record.changes)
              .flatten()
              .toList();
        },
      );
}
