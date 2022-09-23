import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/enums/gacha_rule_type.dart';

part 'get_gacha_stats_params.freezed.dart';

@freezed
class GetGachaStatsParams with _$GetGachaStatsParams {
  const factory GetGachaStatsParams({
    String? pool,
    List<GachaRuleType>? includeRuleTypes,
    List<GachaRuleType>? excludeRuleTypes,
  }) = _GetGachaStatsParams;

  factory GetGachaStatsParams.normal() => GetGachaStatsParams(
        excludeRuleTypes: GachaRuleType.independentGuarantee,
      );

  factory GetGachaStatsParams.pool(String pool) => GetGachaStatsParams(
        pool: pool,
      );
}
