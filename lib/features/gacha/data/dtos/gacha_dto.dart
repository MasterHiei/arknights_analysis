import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/common/dtos/pagination_dto.dart';
import '../../../../core/types/types.dart';
import '../../domain/entities/gacha.dart';
import 'gacha_record_dto.dart';

part 'gacha_dto.freezed.dart';
part 'gacha_dto.g.dart';

@freezed
class GachaDto with _$GachaDto {
  const factory GachaDto({
    @JsonKey(name: 'list') required List<GachaRecordDto> records,
    required PaginationDto pagination,
  }) = _GachaDto;

  factory GachaDto.fromJson(Json json) => _$GachaDtoFromJson(json);

  factory GachaDto.fromRecords(List<GachaRecordDto> records) => GachaDto(
        records: records,
        pagination: PaginationDto.empty(),
      );

  const GachaDto._();

  Gacha toDomain() => Gacha(
        records: records.map((record) => record.toDomain()).toList(),
        pagination: pagination.toDomain(),
      );
}
