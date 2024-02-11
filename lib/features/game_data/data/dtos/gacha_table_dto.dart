import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/types/types.dart';
import 'gacha_pool_dto.dart';

part 'gacha_table_dto.freezed.dart';
part 'gacha_table_dto.g.dart';

@freezed
class GachaTableDto with _$GachaTableDto {
  const factory GachaTableDto({
    required List<GachaPoolDto> gachaPoolClient,
  }) = _GachaTableDto;

  factory GachaTableDto.fromJson(Json json) => _$GachaTableDtoFromJson(json);
}
