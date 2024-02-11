import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/common/value_objects/ts.dart';
import '../../../../core/common/value_objects/uid.dart';
import '../../../../core/enums/platform.dart';

part 'payment_record.freezed.dart';

@freezed
class PaymentRecord with _$PaymentRecord {
  const factory PaymentRecord({
    required String orderId,
    required Platform platform,
    required int amount,
    required String productName,
    required Ts payTime,
    required Uid uid,
  }) = _PaymentRecord;

  const PaymentRecord._();

  String get amountWithUnit => (amount / 100.00).toStringAsFixed(2);
}
