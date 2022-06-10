import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/enums/gacha_rule_type.dart';
import '../../../core/types/types.dart';

part 'gacha_table_dto.freezed.dart';
part 'gacha_table_dto.g.dart';

@freezed
class GachaTableDto with _$GachaTableDto {
  const GachaTableDto._();

  const factory GachaTableDto({
    required String gachaPoolId,
    required int gachaIndex,
    required int openTime,
    required int endTime,
    required String gachaPoolName,
    required GachaRuleType gachaRuleType,
  }) = _GachaTableDto;

  factory GachaTableDto.fromJson(Json json) => _$GachaTableDtoFromJson(json);
}
