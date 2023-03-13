import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/enums/gacha_rule_type.dart';

part 'gacha_pool.freezed.dart';

@freezed
class GachaPool with _$GachaPool {
  const factory GachaPool({
    required String id,
    required int index,
    required int openTime,
    required int endTime,
    required String name,
    required GachaRuleType ruleType,
  }) = _GachaPool;
}
