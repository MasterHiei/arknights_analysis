import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../infrastructure/gacha/gacha_repository.dart';
import 'params/watch_gacha_stats_params.dart';

final gachaStatsProvider = StreamProvider.autoDispose.family(
  (ref, WatchGachaStatsParams params) => ref
      .watch(gachaRepositoryProvider)
      .watchStats(params.uid, pool: params.pool, ruleType: params.ruleType),
);
