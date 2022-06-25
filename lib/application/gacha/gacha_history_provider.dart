import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../infrastructure/gacha/gacha_repository.dart';
import 'params/get_gacha_history_params.dart';

final gachaHistoryProvider = FutureProvider.autoDispose.family(
  (ref, GetGachaHistoryParams params) async {
    final provider = ref.watch(gachaRepositoryProvider);
    final failureOrChars = await provider.getHistory(
      params.uid,
      pool: params.pool,
    );
    return failureOrChars.fold(
      (failure) => throw failure,
      (chars) => chars,
    );
  },
);
