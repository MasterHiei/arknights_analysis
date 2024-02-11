import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/enums/rarity.dart';
import '../../../../core/usecase/params/usecase_params.dart';
import '../../../auth/domain/usecases/get_cached_user.dart';
import '../../domain/usecases/get_recorded_gacha_pools.dart';
import 'states/gacha_history_filter_state.dart';

part 'gacha_history_filter_provider.g.dart';

@riverpod
class GachaHistoryFilter extends _$GachaHistoryFilter {
  @override
  GachaHistoryFilterState build() {
    _getRecordedPools();
    return GachaHistoryFilterState.init();
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

  void toggleShowAll({required bool value}) =>
      state = state.copyWith(showAllPools: value);

  void select(String value) {
    final oldPools = [...state.selectedPools];
    state = state.copyWith(selectedPools: [...oldPools, value]);
  }

  void unselect(String value) {
    final oldPools = [...state.selectedPools];
    state = state.copyWith(selectedPools: oldPools..remove(value));
  }

  Future<void> _getRecordedPools() async {
    const noParams = NoParams();
    final getPoolsTask = ref
        .read(getCachedUserProvider)
        .call(noParams)
        .map(
          (user) => GetRecordedGachaPoolsParams(
            uid: user.uid,
          ),
        )
        .map(ref.read(getRecordedGachaPoolsProvider).call);
    await TaskEither.flatten(getPoolsTask)
        .match(
          (_) {},
          (pools) => state = state.copyWith(pools: pools),
        )
        .run();
  }
}
