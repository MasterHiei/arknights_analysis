import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/enums/platform.dart';
import '../../../core/types/types.dart';
import '../../../domain/core/common/value_objects/ts.dart';
import '../../../domain/payments/payment_record.dart';
import '../../../domain/user/value_objects/uid.dart';

part 'payment_record_dto.freezed.dart';
part 'payment_record_dto.g.dart';

@freezed
class PaymentRecordDto with _$PaymentRecordDto {
  const factory PaymentRecordDto({
    required String orderId,
    required Platform platform,
    required int amount,
    required String productName,
    required int payTime,
    @JsonKey(defaultValue: '') required String uid,
  }) = _PaymentRecordDto;

  factory PaymentRecordDto.fromJson(Json json) =>
      _$PaymentRecordDtoFromJson(json);

  const PaymentRecordDto._();

  PaymentRecord toDomain() => PaymentRecord(
        orderId: orderId,
        platform: platform,
        amount: amount,
        productName: productName,
        payTime: Ts(payTime),
        uid: Uid(uid),
      );
}
