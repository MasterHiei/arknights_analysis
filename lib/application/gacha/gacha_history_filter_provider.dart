import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/enums/rarity.dart';
import '../../infrastructure/gacha/gacha_repository.dart';
import 'states/gacha_history_filter_state.dart';

final gachaHistoryFilterProvider = StateNotifierProvider.autoDispose<
    GachaHistoryFilterNotifier, GachaHistoryFilterState>(
  (ref) => GachaHistoryFilterNotifier(
    ref.watch(gachaRepositoryProvider),
  ),
);

class GachaHistoryFilterNotifier
    extends StateNotifier<GachaHistoryFilterState> {
  GachaHistoryFilterNotifier(
    this._repository,
  ) : super(GachaHistoryFilterState.init()) {
    _getPools();
  }

  final GachaRepository _repository;

  final scrollController = ScrollController();

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  void onRarityChanged(Rarity value, {bool? checked}) {
    final oldRarities = [...state.selectedRarities];
    final contains = oldRarities.contains(value);
    late final List<Rarity> newRarities;
    if (checked == true) {
      newRarities = contains ? oldRarities : [...oldRarities, value];
    } else {
      newRarities = contains ? (oldRarities..remove(value)) : oldRarities;
    }
    state = state.copyWith(selectedRarities: newRarities);
  }

  void switchShowAllPools(bool checked) =>
      state = state.copyWith(showAllPools: checked);

  void selectPool(String value) {
    final oldPools = [...state.selectedPools];
    state = state.copyWith(selectedPools: [...oldPools, value]);
  }

  void unselectPool(String value) {
    final oldPools = [...state.selectedPools];
    state = state.copyWith(selectedPools: oldPools..remove(value));
  }

  Future<void> _getPools() async {
    final failureOrPools = await _repository.getPools();
    failureOrPools.fold(
      (_) {},
      (pools) => state = state.copyWith(pools: pools),
    );
  }
}
