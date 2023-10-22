import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/providers/database_provider.dart';
import '../../../domain/user/value_objects/uid.dart';
import '../../core/database/app_database.dart';
import '../dtos/payment_dto.dart';
import '../dtos/payment_record_dto.dart';

final paymentLocalDataSourceProvider =
    Provider.autoDispose<PaymentLocalDataSource>(
  (ref) => PaymentLocalDataSourceImpl(ref.watch(databaseProvider)),
);

abstract class PaymentLocalDataSource {
  Future<List<int>> save(PaymentDto dto);

  Future<List<PaymentRecordDto>> getRecords(Uid uid);

  Future<PaymentDto> paginate(
    Uid uid, {
    required int page,
    required int pageSize,
  });
}

class PaymentLocalDataSourceImpl implements PaymentLocalDataSource {
  const PaymentLocalDataSourceImpl(this._db);

  final AppDatabase _db;

  @override
  Future<List<int>> save(PaymentDto diamond) =>
      _db.paymentRecordsDao.replaceInto(diamond);

  @override
  Future<List<PaymentRecordDto>> getRecords(Uid uid) =>
      _db.paymentRecordsDao.get(uid.getOrCrash());

  @override
  Future<PaymentDto> paginate(
    Uid uid, {
    required int page,
    required int pageSize,
  }) =>
      _db.paymentRecordsDao.paginate(
        uid.getOrCrash(),
        page: page,
        pageSize: pageSize,
      );
}
