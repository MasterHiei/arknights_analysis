import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/types/types.dart';
import '../../../domain/diamonds/diamond.dart';
import '../../core/common/dtos/pagination_dto.dart';
import 'diamond_record_dto.dart';

part 'diamond_dto.freezed.dart';
part 'diamond_dto.g.dart';

@freezed
class DiamondDto with _$DiamondDto {
  const factory DiamondDto({
    required List<DiamondRecordDto> list,
    required PaginationDto pagination,
  }) = _DiamondDto;

  factory DiamondDto.fromJson(Json json) => _$DiamondDtoFromJson(json);

  factory DiamondDto.fromRecords(List<DiamondRecordDto> records) => DiamondDto(
        list: records,
        pagination: PaginationDto.empty(),
      );

  const DiamondDto._();

  Diamond toDomain() => Diamond(
        list: list.map((record) => record.toDomain()).toList(),
        pagination: pagination.toDomain(),
      );
}
