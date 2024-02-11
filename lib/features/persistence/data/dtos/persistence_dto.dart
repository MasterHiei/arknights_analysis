import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/types/types.dart';
import '../../../diamond/data/dtos/diamond_dto.dart';
import '../../../gacha/data/dtos/gacha_dto.dart';

part 'persistence_dto.freezed.dart';
part 'persistence_dto.g.dart';

@freezed
class PersistenceDto with _$PersistenceDto {
  const factory PersistenceDto({
    required GachaDto gacha,
    required DiamondDto diamond,
  }) = _PersistenceDto;

  factory PersistenceDto.fromJson(Json json) => _$PersistenceDtoFromJson(json);
}
