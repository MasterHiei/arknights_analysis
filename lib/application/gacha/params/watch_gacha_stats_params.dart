import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/enums/gacha_rule_type.dart';
import '../../../domain/user/value_objects/uid.dart';

part 'watch_gacha_stats_params.freezed.dart';

@freezed
class WatchGachaStatsParams with _$WatchGachaStatsParams {
  const factory WatchGachaStatsParams({
    required Uid uid,
    String? pool,
    GachaRuleType? ruleType,
  }) = _WatchGachaStatsParams;
}
