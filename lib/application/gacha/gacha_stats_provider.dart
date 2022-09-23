import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/gacha/gacha_stats.dart';
import '../../domain/user/value_objects/uid.dart';
import '../../infrastructure/gacha/gacha_repository.dart';
import '../user/uid_provider.dart';
import 'params/get_gacha_stats_params.dart';

final gachaStatsProvider = StateNotifierProvider.autoDispose<GachaStatsNotifier,
    AsyncValue<GachaStats>>(
  (ref) => GachaStatsNotifier(
    ref.watch(uidProvider.notifier),
    ref.watch(gachaRepositoryProvider),
  ),
);

class GachaStatsNotifier extends StateNotifier<AsyncValue<GachaStats>> {
  GachaStatsNotifier(
    this._uidProvider,
    this._repository,
  ) : super(const AsyncValue.loading());

  final StateController<Option<Uid>> _uidProvider;
  final GachaRepository _repository;

  late GetGachaStatsParams _cachedParams;

  Future<void> get(GetGachaStatsParams params) async {
    _uidProvider.state.fold(
      () {},
      (uid) async {
        state = const AsyncValue.loading();
        final failureOrStats = await _repository.getStats(
          uid,
          pool: params.pool,
          includeRuleTypes: params.includeRuleTypes,
          excludeRuleTypes: params.excludeRuleTypes,
        );
        state = failureOrStats.fold(
          (failure) => AsyncValue.error(failure),
          (stats) => AsyncValue.data(stats),
        );
        _cachedParams = params;
      },
    );
  }

  Future<void> refresh() => get(_cachedParams);
}
