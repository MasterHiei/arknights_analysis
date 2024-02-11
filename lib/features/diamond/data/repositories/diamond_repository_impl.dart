import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/common/pagination.dart';
import '../../../../core/errors/app_failure.dart';
import '../../../../core/mixins/repository_error_handler_mixin.dart';
import '../../../../core/providers/connectivity_provider.dart';
import '../../../../core/usecase/params/usecase_params.dart';
import '../../domain/entities/diamond_change.dart';
import '../../domain/repositories/diamond_repository.dart';
import '../data_sources/diamond_local_data_source.dart';
import '../data_sources/diamond_remote_data_source.dart';

part 'diamond_repository_impl.g.dart';

@riverpod
DiamondRepository diamondRepository(DiamondRepositoryRef ref) =>
    DiamondRepositoryImpl(
      ref.watch(connectivityProvider),
      ref.watch(diamondLocalDataSourceProvider),
      ref.watch(diamondRemoteDataSourceProvider),
    );

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
  TaskEither<AppFailure, Pagination> fetchHistory(
    FetchDiamondHistoryParams params,
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
  TaskEither<AppFailure, List<DiamondChange>> getHistory(
    GetCachedDiamondHistoryParams params,
  ) =>
      asyncHandler(
        () async {
          final dtos = await _localDataSource.getRecords(params.uid);
          return dtos
              .map((dto) => dto.toDomain())
              .map((record) => record.changes)
              .flatten
              .toList();
        },
      );
}
