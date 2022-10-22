import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/enums/rarity.dart';

part 'gacha_history_filter_state.freezed.dart';

@freezed
class GachaHistoryFilterState with _$GachaHistoryFilterState {
  const factory GachaHistoryFilterState({
    required List<String> pools,
    required bool showAllPools,
    required List<String> selectedPools,
    required List<Rarity> selectedRarities,
  }) = _GachaHistoryFilterState;

  factory GachaHistoryFilterState.init() => const GachaHistoryFilterState(
        pools: [],
        showAllPools: true,
        selectedPools: [],
        selectedRarities: Rarity.values,
      );
}
