import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/enums/rarity.dart';
import '../../domain/user/value_objects/uid.dart';
import '../../infrastructure/gacha/gacha_repository.dart';
import '../user/uid_provider.dart';
import 'states/gacha_history_filter_state.dart';

final gachaHistoryFilterProvider = StateNotifierProvider.autoDispose<
    GachaHistoryFilterNotifier, GachaHistoryFilterState>(
  (ref) => GachaHistoryFilterNotifier(
    ref.watch(uidProvider),
    ref.watch(gachaRepositoryProvider),
  ),
);

class GachaHistoryFilterNotifier
    extends StateNotifier<GachaHistoryFilterState> {
  GachaHistoryFilterNotifier(
    this._uid,
    this._repository,
  ) : super(GachaHistoryFilterState.init()) {
    _getPools();
  }

  final Option<Uid> _uid;
  final GachaRepository _repository;

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

  Future<void> _getPools() async {
    _uid.fold(
      () {},
      (uid) async {
        final failureOrPools = await _repository.getPools(uid: uid);
        failureOrPools.fold(
          (_) {},
          (pools) => state = state.copyWith(pools: pools),
        );
      },
    );
  }
}