import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/enums/gacha_rule_type.dart';
import '../../domain/gacha/gacha_stats.dart';
import '../../domain/user/user.dart';
import '../../infrastructure/gacha/gacha_repository.dart';
import '../user/logged_in_user_info_provider.dart';
import 'params/get_gacha_stats_params.dart';

final gachaStatsProvider = StateNotifierProvider.autoDispose
    .family<GachaStatsNotifier, AsyncValue<GachaStats>, String?>(
  (ref, String? pool) => GachaStatsNotifier(
    pool,
    ref.watch(userProvider),
    ref.watch(gachaRepositoryProvider),
  ),
);

class GachaStatsNotifier extends StateNotifier<AsyncValue<GachaStats>> {
  GachaStatsNotifier(
    this._pool,
    this._userOption,
    this._repository,
  ) : super(const AsyncValue.loading()) {
    _get();
  }

  final String? _pool;
  final Option<User> _userOption;
  final GachaRepository _repository;

  late GetGachaStatsParams _params;

  Future<void> _get() async {
    final pool = _pool;
    if (pool == null) {
      // 全部寻访
      _params = GetGachaStatsParams.all();
    } else if (pool == GachaRuleType.normal.label) {
      // 标准寻访
      _params = GetGachaStatsParams.normal();
    } else {
      // 指定寻访
      _params = GetGachaStatsParams.specific(pool);
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
}
