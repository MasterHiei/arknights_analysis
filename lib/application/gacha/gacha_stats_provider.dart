import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../infrastructure/gacha/gacha_repository.dart';
import 'params/get_gacha_stats_params.dart';

final gachaStatsProvider = FutureProvider.autoDispose.family(
  (ref, GetGachaStatsParams params) async {
    final failureOrStats = await ref.watch(gachaRepositoryProvider).getStats(
          params.uid,
          pool: params.pool,
          includeRuleTypes: params.includeRuleTypes,
          excludeRuleTypes: params.excludeRuleTypes,
        );
    return failureOrStats.fold((failure) => throw failure, (stats) => stats);
  },
);
