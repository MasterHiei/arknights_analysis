import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/user/value_objects/uid.dart';
import '../../infrastructure/gacha/gacha_repository.dart';
import 'gacha_history_filter_provider.dart';

final gachaHistoryProvider = FutureProvider.autoDispose.family(
  (ref, Uid uid) async {
    final repository = ref.watch(gachaRepositoryProvider);
    final filter = ref.watch(gachaHistoryFilterProvider);
    final failureOrChars = await repository.getHistory(
      uid,
      showAllPools: filter.showAllPools,
      pools: filter.selectedPools,
      rarities: filter.selectedRarities,
    );
    return failureOrChars.fold(
      (failure) => throw failure,
      (chars) => chars,
    );
  },
  dependencies: [gachaHistoryFilterProvider],
);
