import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/gacha/gacha_char.dart';
import '../../infrastructure/gacha/gacha_repository.dart';
import '../user/user_provider.dart';
import 'gacha_history_filter_provider.dart';

final gachaHistoryProvider = FutureProvider.autoDispose(
  (ref) async {
    final userOption = ref.watch(userProvider);
    return userOption.fold(
      () async => <GachaChar>[],
      (user) async {
        final repository = ref.watch(gachaRepositoryProvider);
        final filter = ref.watch(gachaHistoryFilterProvider);
        final failureOrChars = await repository.getHistory(
          user.uid,
          showAllPools: filter.showAllPools,
          pools: filter.selectedPools,
          rarities: filter.selectedRarities,
        );
        return failureOrChars.fold(
          (failure) => throw failure,
          (chars) => chars,
        );
      },
    );
  },
  dependencies: [
    userProvider,
    gachaHistoryFilterProvider,
    gachaRepositoryProvider,
  ],
);
