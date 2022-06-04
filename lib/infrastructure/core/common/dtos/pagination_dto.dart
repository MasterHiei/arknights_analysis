import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/types/types.dart';
import '../../../../domain/core/common/pagination.dart';

part 'pagination_dto.freezed.dart';
part 'pagination_dto.g.dart';

@freezed
class PaginationDto with _$PaginationDto {
  const PaginationDto._();

  const factory PaginationDto({
    required int current,
    required int total,
  }) = _PaginationDto;

  factory PaginationDto.fromJson(Json json) => _$PaginationDtoFromJson(json);

  Pagination toDomain() => Pagination(
        current: current,
        total: total,
      );
}
