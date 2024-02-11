import 'package:dartx/dartx.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/enums/gacha_rule_type.dart';

part 'gacha_stats_filter_state.freezed.dart';

@freezed
class GachaStatsFilterState with _$GachaStatsFilterState {
  const factory GachaStatsFilterState({
    required List<String> source,
    String? value,
  }) = _GachaStatsFilterState;

  factory GachaStatsFilterState.init() => const GachaStatsFilterState(
        source: [],
      );

  const GachaStatsFilterState._();

  List<String> get processedSource {
    if (source.containsAny(GachaRuleType.classicPools)) {
      // 合并中坚寻访池
      final combinedPools = source.map(
        (pool) {
          if (GachaRuleType.classicPools.contains(pool)) {
            return GachaRuleType.classic.label;
          }
          return pool;
        },
      ).distinct();
      return [
        GachaRuleType.normal.label,
        ...combinedPools,
      ];
    }
    return [
      GachaRuleType.normal.label,
      ...source,
    ];
  }
}
