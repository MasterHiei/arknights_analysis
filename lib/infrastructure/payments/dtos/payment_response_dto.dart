import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/types/types.dart';
import 'payment_record_dto.dart';

part 'payment_response_dto.freezed.dart';
part 'payment_response_dto.g.dart';

@freezed
class PaymentResponseDto with _$PaymentResponseDto {
  const factory PaymentResponseDto({
    @JsonKey(name: 'status') int? code,
    @JsonKey(defaultValue: '') required String msg,
    @JsonKey(defaultValue: []) required List<PaymentRecordDto> data,
  }) = _PaymentResponseDto;

  factory PaymentResponseDto.fromJson(Json json) =>
      _$PaymentResponseDtoFromJson(json);
}
