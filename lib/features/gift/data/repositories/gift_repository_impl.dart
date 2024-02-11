import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/errors/app_failure.dart';
import '../../../../core/mixins/repository_error_handler_mixin.dart';
import '../../../../core/providers/connectivity_provider.dart';
import '../../../../core/usecase/params/usecase_params.dart';
import '../../domain/entities/exchange_log.dart';
import '../../domain/repositories/gift_repository.dart';
import '../data_sources/gift_local_data_source.dart';
import '../data_sources/gift_remote_data_source.dart';

part 'gift_repository_impl.g.dart';

@riverpod
GiftRepository giftRepository(GiftRepositoryRef ref) => GiftRepositoryImpl(
      ref.watch(connectivityProvider),
      ref.watch(giftLocalDataSourceProvider),
      ref.watch(giftRemoteDataSourceProvider),
    );

class GiftRepositoryImpl
    with RepositoryErrorHandlerMixin
    implements GiftRepository {
  const GiftRepositoryImpl(
    this._connectivity,
    this._localDataSource,
    this._remoteDataSource,
  );

  final Connectivity _connectivity;
  final GiftLocalDataSource _localDataSource;
  final GiftRemoteDataSource _remoteDataSource;

  @override
  TaskEither<AppFailure, Unit> fetchHistory(
    FetchGiftHistoryParams params,
  ) =>
      asyncHandler(
        () async {
          final response = await _remoteDataSource.fetch(
            token: params.token.getOrCrash(),
            channelId: params.channel.id,
          );
          if (response.code != 0) {
            throw AppFailure.remoteServerError(
              code: response.code,
              message: response.msg,
            );
          }
          final logs = response.data.map(
            (log) => log.copyWith(uid: params.uid.getOrCrash()),
          );
          await _localDataSource.save(logs);
          return unit;
        },
        connectivity: _connectivity,
      );

  @override
  TaskEither<AppFailure, List<ExchangeLog>> getHistory(
    GetCachedGiftHistoryParams params,
  ) =>
      asyncHandler(
        () async {
          final dtos = await _localDataSource.getLogs(params.uid);
          return dtos.map((dto) => dto.toDomain()).toList();
        },
      );
}
