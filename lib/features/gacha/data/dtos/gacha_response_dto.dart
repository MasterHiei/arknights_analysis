import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/types/types.dart';
import 'gacha_dto.dart';

part 'gacha_response_dto.freezed.dart';
part 'gacha_response_dto.g.dart';

@freezed
class GachaResponseDto with _$GachaResponseDto {
  const factory GachaResponseDto({
    int? code,
    @JsonKey(defaultValue: '') required String msg,
    @JsonKey(fromJson: _dataFromJson) GachaDto? data,
  }) = _GachaResponseDto;

  factory GachaResponseDto.fromJson(Json json) =>
      _$GachaResponseDtoFromJson(json);
}

GachaDto? _dataFromJson(Json? json) {
  if (json == null || json.isEmpty) {
    return null;
  }
  return GachaDto.fromJson(json);
}
