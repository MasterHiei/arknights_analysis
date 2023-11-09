import 'package:dartx/dartx.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/enums/gacha_rule_type.dart';

part 'gacha_pool_selector_state.freezed.dart';

@freezed
class GachaPoolSelectorState with _$GachaPoolSelectorState {
  const factory GachaPoolSelectorState({
    required List<String> source,
    String? value,
  }) = _GachaPoolSelectorState;

  factory GachaPoolSelectorState.init({
    Iterable<String> source = const Iterable.empty(),
  }) =>
      GachaPoolSelectorState(
        source: source.toList(),
      );

  const GachaPoolSelectorState._();

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
