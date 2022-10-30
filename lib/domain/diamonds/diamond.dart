import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/common/pagination.dart';
import 'diamond_record.dart';

part 'diamond.freezed.dart';

@freezed
class Diamond with _$Diamond {
  const factory Diamond({
    required List<DiamondRecord> list,
    required Pagination pagination,
  }) = _Diamond;
}
