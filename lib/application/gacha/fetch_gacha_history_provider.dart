import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/gacha/gacha_char.dart';
import '../../infrastructure/gacha/gacha_repository.dart';
import '../user/logged_in_user_info_provider.dart';
import 'gacha_history_filter_provider.dart';

part 'fetch_gacha_history_provider.g.dart';

@riverpod
Future<List<GachaChar>> fetchGachaHistory(FetchGachaHistoryRef ref) =>
    ref.watch(userProvider).fold(
      () async => [],
      (user) async {
        final repository = ref.read(gachaRepositoryProvider);
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
