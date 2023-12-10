import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../core/enums/ak_login_type.dart';
import '../../core/exceptions/app_failure.dart';
import '../../core/providers/connectivity_provider.dart';
import '../../domain/core/common/pagination.dart';
import '../../domain/diamonds/diamond_change.dart';
import '../../domain/user/value_objects/token.dart';
import '../../domain/user/value_objects/uid.dart';
import '../core/mixins/repository_error_handler_mixin.dart';
import 'data_sources/diamond_local_data_source.dart';
import 'data_sources/diamond_remote_data_source.dart';

part 'diamond_repository.g.dart';

@riverpod
DiamondRepository diamondRepository(DiamondRepositoryRef ref) =>
    DiamondRepositoryImpl(
      ref.watch(connectivityProvider),
      ref.watch(diamondLocalDataSourceProvider),
      ref.watch(diamondRemoteDataSourceProvider),
    );

abstract class DiamondRepository {
  TaskEither<AppFailure, Pagination> fetchAndSave(
    Token token, {
    required Uid uid,
    int page = 1,
    required AkLoginType loginType,
  });

  TaskEither<AppFailure, List<DiamondChange>> getHistory(Uid uid);
}

class DiamondRepositoryImpl
    with RepositoryErrorHandlerMixin
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
  TaskEither<AppFailure, List<DiamondChange>> getHistory(Uid uid) =>
      executeAsync(
        () async {
          final dtos = await _localDataSource.getRecords(uid);
          return dtos
              .map((dto) => dto.toDomain())
              .map((record) => record.changes)
              .flatten
              .toList();
        },
      );
}
