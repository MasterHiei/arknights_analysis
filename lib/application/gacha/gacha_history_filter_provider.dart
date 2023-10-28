import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/enums/rarity.dart';
import '../../domain/user/user.dart';
import '../../infrastructure/gacha/gacha_repository.dart';
import '../user/logged_in_user_info_provider.dart';
import 'states/gacha_history_filter_state.dart';

final gachaHistoryFilterProvider = StateNotifierProvider.autoDispose<
    GachaHistoryFilterNotifier, GachaHistoryFilterState>(
  (ref) => GachaHistoryFilterNotifier(
    ref.watch(userProvider),
    ref.watch(gachaRepositoryProvider),
  ),
);

class GachaHistoryFilterNotifier
    extends StateNotifier<GachaHistoryFilterState> {
  GachaHistoryFilterNotifier(
    this._userOption,
    this._repository,
  ) : super(GachaHistoryFilterState.init()) {
    _getPools();
  }

  final Option<User> _userOption;
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

  Future<void> _getPools() async => _userOption.fold(
        () {},
        (user) async {
          final uid = user.uid;
          final failureOrPools = await _repository.getRecordedPools(uid: uid);
          failureOrPools.fold(
            (_) {},
            (pools) => state = state.copyWith(pools: pools),
          );
        },
      );
}
