import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/common/dtos/token_body_official_dto.dart';
import '../../../../core/errors/app_failure.dart';
import '../../../../core/mixins/repository_error_handler_mixin.dart';
import '../../../../core/providers/connectivity_provider.dart';
import '../../../../core/usecase/params/usecase_params.dart';
import '../../domain/entities/payment_record.dart';
import '../../domain/repositories/payment_repository.dart';
import '../data_sources/payment_local_data_source.dart';
import '../data_sources/payment_remote_data_source.dart';

part 'payment_repository_impl.g.dart';

@riverpod
PaymentRepository paymentRepository(PaymentRepositoryRef ref) =>
    PaymentRepositoryImpl(
      ref.watch(connectivityProvider),
      ref.watch(paymentLocalDataSourceProvider),
      ref.watch(paymentRemoteDataSourceProvider),
    );

class PaymentRepositoryImpl
    with RepositoryErrorHandlerMixin
    implements PaymentRepository {
  const PaymentRepositoryImpl(
    this._connectivity,
    this._localDataSource,
    this._remoteDataSource,
  );

  final Connectivity _connectivity;
  final PaymentLocalDataSource _localDataSource;
  final PaymentRemoteDataSource _remoteDataSource;

  @override
  TaskEither<AppFailure, Unit> fetchHistory(
    FetchPaymentHistoryParams params,
  ) =>
      asyncHandler(
        () async {
          final body = TokenBodyOfficialDto(token: params.token.getOrCrash());
          final response = await _remoteDataSource.request(body);
          if (response.code != 0) {
            throw AppFailure.remoteServerError(
              code: response.code,
              message: response.msg,
            );
          }
          final records = response.data
              .map((record) => record.copyWith(uid: params.uid.getOrCrash()))
              .toList();
          await _localDataSource.save(records);
          return unit;
        },
        connectivity: _connectivity,
      );

  @override
  TaskEither<AppFailure, List<PaymentRecord>> getHistory(
    GetCachedPaymentHistoryParams params,
  ) =>
      asyncHandler(
        () async {
          final dtos = await _localDataSource.getRecords(params.uid);
          return dtos.map((dto) => dto.toDomain()).toList();
        },
      );
}
