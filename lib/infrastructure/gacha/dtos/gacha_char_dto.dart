import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/types/types.dart';
import '../../../domain/gacha/gacha_char.dart';

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

  GachaChar toDomain() => GachaChar(
        name: name,
        rarity: rarity,
        isNew: isNew,
      );
}
