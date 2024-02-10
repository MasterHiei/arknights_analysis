import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/common/value_objects/uid.dart';
import '../../../../core/database/app_database.dart';
import '../../../../core/providers/database_provider.dart';
import '../dtos/payment_record_dto.dart';

part 'payment_local_data_source.g.dart';

@riverpod
PaymentLocalDataSource paymentLocalDataSource(PaymentLocalDataSourceRef ref) =>
    PaymentLocalDataSourceImpl(ref.watch(databaseProvider));

abstract class PaymentLocalDataSource {
  Future<List<int>> save(List<PaymentRecordDto> dto);

  Future<List<PaymentRecordDto>> getRecords(Uid uid);
}

class PaymentLocalDataSourceImpl implements PaymentLocalDataSource {
  const PaymentLocalDataSourceImpl(this._db);

  final AppDatabase _db;

  @override
  Future<List<int>> save(List<PaymentRecordDto> records) =>
      _db.paymentRecordsDao.replaceInto(records);

  @override
  Future<List<PaymentRecordDto>> getRecords(Uid uid) =>
      _db.paymentRecordsDao.get(uid.getOrCrash());
}
