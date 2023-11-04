import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/diamonds/diamond_change.dart';
import '../../infrastructure/diamonds/diamond_repository.dart';
import '../user/logged_in_user_info_provider.dart';

part 'fetch_diamond_history_provider.g.dart';

@riverpod
Future<List<DiamondChange>> fetchDiamondHistory(FetchDiamondHistoryRef ref) =>
    ref.watch(userProvider).fold(
      () async => <DiamondChange>[],
      (user) async {
        final repository = ref.read(diamondRepositoryProvider);
        final failureOrChanges = await repository.getHistory(user.uid);
        return failureOrChanges.fold(
          (failure) => throw failure,
          (changes) => changes,
        );
      },
    );
