import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/types/types.dart';
import '../../../domain/payments/payment.dart';
import '../../core/common/dtos/pagination_dto.dart';
import 'payment_record_dto.dart';

part 'payment_dto.freezed.dart';
part 'payment_dto.g.dart';

@freezed
class PaymentDto with _$PaymentDto {
  const factory PaymentDto({
    required List<PaymentRecordDto> list,
    required PaginationDto pagination,
  }) = _PaymentDto;

  factory PaymentDto.fromJson(Json json) => _$PaymentDtoFromJson(json);

  factory PaymentDto.fromRecords(List<PaymentRecordDto> records) => PaymentDto(
        list: records,
        pagination: PaginationDto.empty(),
      );

  const PaymentDto._();

  Payment toDomain() => Payment(
        list: list.map((record) => record.toDomain()).toList(),
        pagination: pagination.toDomain(),
      );
}
