import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/enums/gacha_rule_type.dart';

part 'get_gacha_stats_params.freezed.dart';

@freezed
class GetGachaStatsParams with _$GetGachaStatsParams {
  const factory GetGachaStatsParams({
    @Default([]) List<String> pools,
    @Default([]) List<GachaRuleType> includeRuleTypes,
    @Default([]) List<GachaRuleType> excludeRuleTypes,
  }) = _GetGachaStatsParams;

  factory GetGachaStatsParams.all() => const GetGachaStatsParams();

  factory GetGachaStatsParams.normal() => GetGachaStatsParams(
        excludeRuleTypes: GachaRuleType.independentGuarantee,
      );

  factory GetGachaStatsParams.specific(String pool) => GetGachaStatsParams(
        pools: [pool],
      );

  factory GetGachaStatsParams.classics() => GetGachaStatsParams(
        pools: GachaRuleType.classicPools,
      );
}
