import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/gacha/gacha_stats.dart';
import '../../domain/user/user.dart';
import '../../infrastructure/gacha/gacha_repository.dart';
import '../user/user_provider.dart';
import 'gacha_pool_selector_provider.dart';
import 'params/get_gacha_stats_params.dart';

final gachaStatsProvider = StateNotifierProvider.autoDispose<GachaStatsNotifier,
    AsyncValue<GachaStats>>(
  (ref) => GachaStatsNotifier(
    ref.watch(userProvider),
    ref.watch(selectedGachaPoolProvider),
    ref.watch(gachaRepositoryProvider),
  ),
  dependencies: [
    userProvider,
    selectedGachaPoolProvider,
    gachaRepositoryProvider,
  ],
);

class GachaStatsNotifier extends StateNotifier<AsyncValue<GachaStats>> {
  GachaStatsNotifier(
    this._userOption,
    this._selectedPool,
    this._repository,
  ) : super(const AsyncValue.loading()) {
    _get();
  }

  final Option<User> _userOption;
  final String? _selectedPool;
  final GachaRepository _repository;

  late GetGachaStatsParams _params;

  Future<void> _get() async {
    final pool = _selectedPool;
    if (pool == null) {
      // 标准寻访
      _params = GetGachaStatsParams.normal();
    } else {
      // 指定寻访
      _params = GetGachaStatsParams.pool(pool);
    }
    _userOption.fold(
      () {},
      (user) async {
        state = const AsyncValue.loading();
        final failureOrStats = await _repository.getStats(
          user.uid,
          pool: _params.pool,
          includeRuleTypes: _params.includeRuleTypes,
          excludeRuleTypes: _params.excludeRuleTypes,
        );
        state = await AsyncValue.guard(
          () async => failureOrStats.fold(
            (failure) => throw failure,
            (stats) => stats,
          ),
        );
      },
    );
  }

  Future<void> refresh() => _get();
}
