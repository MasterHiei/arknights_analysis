import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../core/exceptions/app_failure.dart';
import '../../core/providers/connectivity_provider.dart';
import '../../domain/payments/payment_record.dart';
import '../../domain/user/value_objects/token.dart';
import '../../domain/user/value_objects/uid.dart';
import '../core/common/dtos/token_body_official_dto.dart';
import '../core/mixins/api_error_handler_mixin.dart';
import 'data_sources/payment_local_data_source.dart';
import 'data_sources/payment_remote_data_source.dart';

part 'payment_repository.g.dart';

@riverpod
PaymentRepository paymentRepository(PaymentRepositoryRef ref) =>
    PaymentRepositoryImpl(
      ref.watch(connectivityProvider),
      ref.watch(paymentLocalDataSourceProvider),
      ref.watch(paymentRemoteDataSourceProvider),
    );

abstract class PaymentRepository {
  Future<Either<AppFailure, Unit>> fetchAndSave(
    Token token, {
    required Uid uid,
  });

  Future<Either<AppFailure, List<PaymentRecord>>> getHistory(Uid uid);
}

class PaymentRepositoryImpl
    with APIErrorHandlerMixin
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
  Future<Either<AppFailure, Unit>> fetchAndSave(
    Token token, {
    required Uid uid,
  }) =>
      execute(
        () async {
          final body = TokenBodyOfficialDto(token: token.getOrCrash());
          final response = await _remoteDataSource.request(body);
          if (response.code != 0) {
            throw AppFailure.remoteServerError(
              message: response.msg,
              code: response.code,
            );
          }
          final records = response.data.map(
            (record) => record.copyWith(uid: uid.getOrCrash()),
          );
          await _localDataSource.save(records);
          return unit;
        },
        connectivity: _connectivity,
      );

  @override
  Future<Either<AppFailure, List<PaymentRecord>>> getHistory(Uid uid) =>
      execute(
        () async {
          final dtos = await _localDataSource.getRecords(uid);
          return dtos.map((dto) => dto.toDomain()).toList();
        },
      );
}
