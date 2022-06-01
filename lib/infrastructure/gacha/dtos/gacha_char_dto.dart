import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/types/types.dart';
import '../../../domain/gacha/gacha_char.dart';
import '../schemas/t_gacha_char.dart';

part 'gacha_char_dto.freezed.dart';
part 'gacha_char_dto.g.dart';

@freezed
class GachaCharDto with _$GachaCharDto {
  const GachaCharDto._();

  const factory GachaCharDto({
    required String name,
    required int rarity,
    required bool isNew,
  }) = _GachaCharDto;

  factory GachaCharDto.fromJson(Json json) => _$GachaCharDtoFromJson(json);

  factory GachaCharDto.fromSchema(TGachaChar char) => GachaCharDto(
        name: char.name,
        rarity: char.rarity,
        isNew: char.isNew,
      );

  GachaChar toDomain() => GachaChar(
        name: name,
        rarity: rarity,
        isNew: isNew,
      );

  TGachaChar toSchema() => TGachaChar()
    ..name = name
    ..rarity = rarity
    ..isNew = isNew;
}
