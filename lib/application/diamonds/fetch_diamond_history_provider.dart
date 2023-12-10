import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/diamonds/diamond_change.dart';
import '../../infrastructure/diamonds/diamond_repository.dart';
import '../user/logged_in_user_info_provider.dart';

part 'fetch_diamond_history_provider.g.dart';

@riverpod
Future<List<DiamondChange>> fetchDiamondHistory(FetchDiamondHistoryRef ref) =>
    ref.watch(userProvider).match(
      () async => [],
      (user) async {
        final repository = ref.read(diamondRepositoryProvider);
        return (await repository.getHistory(user.uid).run()).match(
          (failure) => throw failure,
          (changes) => changes,
        );
      },
    );
