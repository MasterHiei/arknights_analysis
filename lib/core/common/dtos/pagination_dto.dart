import 'package:freezed_annotation/freezed_annotation.dart';

import '../../types/types.dart';
import '../pagination.dart';

part 'pagination_dto.freezed.dart';
part 'pagination_dto.g.dart';

@freezed
class PaginationDto with _$PaginationDto {
  const factory PaginationDto({
    required int current,
    required int total,
  }) = _PaginationDto;

  factory PaginationDto.fromJson(Json json) => _$PaginationDtoFromJson(json);

  factory PaginationDto.empty() => const PaginationDto(
        current: -1,
        total: -1,
      );

  const PaginationDto._();

  Pagination toDomain() => Pagination(
        current: current,
        total: total,
      );
}
