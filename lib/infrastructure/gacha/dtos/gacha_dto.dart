import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/types/types.dart';
import '../../../domain/gacha/gacha.dart';
import '../../core/common/pagination_dto.dart';
import 'gacha_record_dto.dart';

part 'gacha_dto.freezed.dart';
part 'gacha_dto.g.dart';

@freezed
class GachaDto with _$GachaDto {
  const GachaDto._();

  const factory GachaDto({
    required List<GachaRecordDto> list,
    required PaginationDto pagination,
  }) = _GachaDto;

  factory GachaDto.fromJson(Json json) => _$GachaDtoFromJson(json);

  Gacha toDomain() => Gacha(
        list: list.map((record) => record.toDomain()).toList(),
        pagination: pagination.toDomain(),
      );
}
