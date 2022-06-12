import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/enums/gacha_rule_type.dart';
import '../../../core/types/types.dart';
import '../../../domain/gacha/gacha_pool.dart';

part 'gacha_pool_dto.freezed.dart';
part 'gacha_pool_dto.g.dart';

@freezed
class GachaPoolDto with _$GachaPoolDto {
  const GachaPoolDto._();

  const factory GachaPoolDto({
    required String gachaPoolId,
    required int gachaIndex,
    required int openTime,
    required int endTime,
    required String gachaPoolName,
    required GachaRuleType gachaRuleType,
  }) = _GachaPoolDto;

  factory GachaPoolDto.fromJson(Json json) => _$GachaPoolDtoFromJson(json);

  GachaPool toDomain() => GachaPool(
        gachaPoolId: gachaPoolId,
        gachaIndex: gachaIndex,
        openTime: openTime,
        endTime: endTime,
        gachaPoolName: gachaPoolName,
        gachaRuleType: gachaRuleType,
      );
}
