import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/common/value_objects/ts.dart';
import '../../../../core/common/value_objects/uid.dart';
import 'diamond_change.dart';

part 'diamond_record.freezed.dart';

@freezed
class DiamondRecord with _$DiamondRecord {
  const factory DiamondRecord({
    required Ts ts,
    required String operation,
    required List<DiamondChange> changes,
    required Uid uid,
  }) = _DiamondRecord;
}
