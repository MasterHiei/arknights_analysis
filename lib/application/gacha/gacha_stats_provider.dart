import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/gacha/gacha_stats.dart';
import '../../domain/user/user.dart';
import '../../infrastructure/gacha/gacha_repository.dart';
import '../user/user_provider.dart';
import 'params/get_gacha_stats_params.dart';

final gachaStatsProvider = StateNotifierProvider.autoDispose<GachaStatsNotifier,
    AsyncValue<GachaStats>>(
  (ref) => GachaStatsNotifier(
    ref.watch(userProvider.notifier),
    ref.watch(gachaRepositoryProvider),
  ),
  dependencies: [gachaRepositoryProvider],
);

class GachaStatsNotifier extends StateNotifier<AsyncValue<GachaStats>> {
  GachaStatsNotifier(
    this._userProvider,
    this._repository,
  ) : super(const AsyncValue.loading());

  final StateController<Option<User>> _userProvider;
  final GachaRepository _repository;

  late GetGachaStatsParams _cachedParams;

  Future<void> get(GetGachaStatsParams params) async {
    _userProvider.state.fold(
      () {},
      (user) async {
        state = const AsyncValue.loading();
        final failureOrStats = await _repository.getStats(
          user.uid,
          pool: params.pool,
          includeRuleTypes: params.includeRuleTypes,
          excludeRuleTypes: params.excludeRuleTypes,
        );
        state = await AsyncValue.guard(
          () async => failureOrStats.fold(
            (failure) => throw failure,
            (stats) => stats,
          ),
        );
        _cachedParams = params;
      },
    );
  }

  Future<void> refresh() => get(_cachedParams);
}
