import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/common/pagination.dart';
import 'payment_record.dart';

part 'payment.freezed.dart';

@freezed
class Payment with _$Payment {
  const factory Payment({
    required List<PaymentRecord> list,
    required Pagination pagination,
  }) = _Payment;
}
