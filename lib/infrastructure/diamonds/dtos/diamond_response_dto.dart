import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/types/types.dart';
import 'diamond_dto.dart';

part 'diamond_response_dto.freezed.dart';
part 'diamond_response_dto.g.dart';

@freezed
class DiamondResponseDto with _$DiamondResponseDto {
  const factory DiamondResponseDto({
    int? code,
    @JsonKey(defaultValue: '') required String msg,
    @JsonKey(fromJson: _dataFromJson) DiamondDto? data,
  }) = _DiamondResponseDto;

  factory DiamondResponseDto.fromJson(Json json) =>
      _$DiamondResponseDtoFromJson(json);
}

DiamondDto? _dataFromJson(Json? json) {
  if (json == null || json.isEmpty) {
    return null;
  }
  return DiamondDto.fromJson(json);
}
