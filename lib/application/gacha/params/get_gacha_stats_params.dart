import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/enums/gacha_rule_type.dart';
import '../../../domain/user/value_objects/uid.dart';

part 'get_gacha_stats_params.freezed.dart';

@freezed
class GetGachaStatsParams with _$GetGachaStatsParams {
  const factory GetGachaStatsParams({
    required Uid uid,
    String? pool,
    List<GachaRuleType>? includeRuleTypes,
    List<GachaRuleType>? excludeRuleTypes,
  }) = _GetGachaStatsParams;
}
