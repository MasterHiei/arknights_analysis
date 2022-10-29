import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/types/types.dart';
import '../../../domain/core/common/value_objects/ts.dart';
import '../../../domain/diamonds/diamond_change.dart';

part 'diamond_change_dto.freezed.dart';
part 'diamond_change_dto.g.dart';

@freezed
class DiamondChangeDto with _$DiamondChangeDto {
  const factory DiamondChangeDto({
    required String type,
    required int before,
    required int after,
  }) = _DiamondChangeDto;

  factory DiamondChangeDto.fromJson(Json json) =>
      _$DiamondChangeDtoFromJson(json);

  const DiamondChangeDto._();

  DiamondChange toDomain({required Ts ts}) => DiamondChange(
        type: type,
        before: before,
        after: after,
        ts: ts,
      );
}
