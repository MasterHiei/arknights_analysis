import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/common/value_objects/ts.dart';
import '../../../../core/enums/rarity.dart';
import '../../../../core/types/types.dart';
import '../../domain/entities/gacha_char.dart';

part 'gacha_char_dto.freezed.dart';
part 'gacha_char_dto.g.dart';

@freezed
class GachaCharDto with _$GachaCharDto {
  const factory GachaCharDto({
    required String name,
    required Rarity rarity,
    required bool isNew,
  }) = _GachaCharDto;

  factory GachaCharDto.fromJson(Json json) => _$GachaCharDtoFromJson(json);

  const GachaCharDto._();

  GachaChar toDomain({required String pool, required Ts ts}) => GachaChar(
        name: name,
        rarity: rarity,
        isNew: isNew,
        pool: pool,
        ts: ts,
      );
}
