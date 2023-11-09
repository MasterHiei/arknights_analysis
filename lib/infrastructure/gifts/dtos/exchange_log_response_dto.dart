import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/types/types.dart';
import 'exchange_log_dto.dart';

part 'exchange_log_response_dto.freezed.dart';
part 'exchange_log_response_dto.g.dart';

@freezed
class ExchangeLogResponseDto with _$ExchangeLogResponseDto {
  const factory ExchangeLogResponseDto({
    required int code,
    required List<ExchangeLogDto> data,
    required String msg,
  }) = _ExchangeLogResponseDto;

  factory ExchangeLogResponseDto.fromJson(Json json) =>
      _$ExchangeLogResponseDtoFromJson(json);
}
