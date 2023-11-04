import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../core/enums/rarity.dart';
import '../../infrastructure/gacha/gacha_repository.dart';
import '../user/logged_in_user_info_provider.dart';
import 'states/gacha_history_filter_state.dart';

part 'gacha_history_filter_provider.g.dart';

@riverpod
class GachaHistoryFilter extends _$GachaHistoryFilter {
  @override
  GachaHistoryFilterState build() {
    _getPools();
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

  void switchShowAllPools({required bool value}) =>
      state = state.copyWith(showAllPools: value);

  void selectPool(String value) {
    final oldPools = [...state.selectedPools];
    state = state.copyWith(selectedPools: [...oldPools, value]);
  }

  void unselectPool(String value) {
    final oldPools = [...state.selectedPools];
    state = state.copyWith(selectedPools: oldPools..remove(value));
  }

  Future<void> _getPools() => ref.watch(userProvider).fold(
        () async {},
        (user) async {
          final uid = user.uid;
          final failureOrPools = await ref
              .read(gachaRepositoryProvider)
              .getRecordedPools(uid: uid);
          failureOrPools.fold(
            (_) {},
            (pools) => state = state.copyWith(pools: pools),
          );
        },
      );
}
