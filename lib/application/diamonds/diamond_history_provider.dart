import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/diamonds/diamond_change.dart';
import '../../infrastructure/diamonds/diamond_repository.dart';
import '../user/user_provider.dart';

final diamondHistoryProvider = FutureProvider.autoDispose(
  (ref) async {
    final userOption = ref.watch(userProvider);
    return userOption.fold(
      () async => <DiamondChange>[],
      (user) async {
        final repository = ref.watch(diamondRepositoryProvider);
        final failureOrChanges = await repository.getHistory(user.uid);
        return failureOrChanges.fold(
          (failure) => throw failure,
          (changes) => changes,
        );
      },
    );
  },
  dependencies: [
    userProvider,
    diamondRepositoryProvider,
  ],
);
