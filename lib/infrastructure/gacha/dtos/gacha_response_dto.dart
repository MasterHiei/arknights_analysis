import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/types/types.dart';
import 'gacha_dto.dart';

part 'gacha_response_dto.freezed.dart';
part 'gacha_response_dto.g.dart';

@freezed
class GachaResponseDto with _$GachaResponseDto {
  const factory GachaResponseDto({
    int? code,
    @JsonKey(defaultValue: '') required String msg,
    GachaDto? data,
  }) = _GachaResponseDto;

  factory GachaResponseDto.fromJson(Json json) =>
      _$GachaResponseDtoFromJson(json);
}
