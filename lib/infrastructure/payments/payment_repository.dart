import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/exceptions/app_failure.dart';
import '../../core/providers.dart';
import '../../domain/core/common/pagination.dart';
import '../../domain/payments/payment_record.dart';
import '../../domain/user/value_objects/token.dart';
import '../../domain/user/value_objects/uid.dart';
import '../core/common/dtos/token_body_official_dto.dart';
import '../core/mixins/api_error_handler_mixin.dart';
import 'data_sources/payment_local_data_source.dart';
import 'data_sources/payment_remote_data_source.dart';
import 'dtos/payment_dto.dart';

final paymentRepositoryProvider = Provider.autoDispose<PaymentRepository>(
  (ref) => PaymentRepositoryImpl(
    ref.watch(connectivityProvider),
    ref.watch(paymentLocalDataSourceProvider),
    ref.watch(paymentRemoteDataSourceProvider),
  ),
);

abstract class PaymentRepository {
  Future<Either<AppFailure, Pagination>> fetchAndSave(
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
  Future<Either<AppFailure, Pagination>> fetchAndSave(
    Token token, {
    required Uid uid,
  }) =>
      execute(
        () async {
          final body = TokenBodyOfficialDto(token: token.getOrCrash());
          final response = await _remoteDataSource.request(body);
          final records = response.data.map(
            (record) => record.copyWith(uid: uid.getOrCrash()),
          );
          final dto = PaymentDto.fromRecords(records.toList());
          await _localDataSource.save(dto);
          return dto.pagination.toDomain();
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
