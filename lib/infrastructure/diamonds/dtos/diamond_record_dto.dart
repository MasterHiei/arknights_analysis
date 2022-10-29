import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/types/types.dart';
import '../../../domain/core/common/value_objects/ts.dart';
import '../../../domain/diamonds/diamond_record.dart';
import '../../../domain/user/value_objects/uid.dart';
import 'diamond_change_dto.dart';

part 'diamond_record_dto.freezed.dart';
part 'diamond_record_dto.g.dart';

@freezed
class DiamondRecordDto with _$DiamondRecordDto {
  const factory DiamondRecordDto({
    required int ts,
    required String operation,
    required List<DiamondChangeDto> changes,
    @JsonKey(defaultValue: '') required String uid,
  }) = _DiamondRecordDto;

  factory DiamondRecordDto.fromJson(Json json) =>
      _$DiamondRecordDtoFromJson(json);

  const DiamondRecordDto._();

  DiamondRecord toDomain() => DiamondRecord(
        ts: _ts,
        operation: operation,
        changes: changes.map((change) => change.toDomain(ts: _ts)).toList(),
        uid: Uid(uid),
      );

  Ts get _ts => Ts(ts);
}
