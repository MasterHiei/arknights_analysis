import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/enums/rarity.dart';
import '../../../core/types/types.dart';
import '../../../domain/core/common/value_objects/ts.dart';
import '../../../domain/gacha/gacha_char.dart';

part 'gacha_char_dto.freezed.dart';
part 'gacha_char_dto.g.dart';

@freezed
class GachaCharDto with _$GachaCharDto {
  const GachaCharDto._();

  const factory GachaCharDto({
    required String name,
    required Rarity rarity,
    required bool isNew,
  }) = _GachaCharDto;

  factory GachaCharDto.fromJson(Json json) => _$GachaCharDtoFromJson(json);

  GachaChar toDomain({required String pool, required Ts ts}) => GachaChar(
        name: name,
        rarity: rarity,
        isNew: isNew,
        pool: pool,
        ts: ts,
      );
}
