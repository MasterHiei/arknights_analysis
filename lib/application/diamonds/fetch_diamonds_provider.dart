import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:time/time.dart';

import '../../domain/user/user.dart';
import '../../infrastructure/diamonds/diamond_repository.dart';
import '../user/logged_in_user_info_provider.dart';
import 'states/diamond_state.dart';

part 'fetch_diamonds_provider.g.dart';

@riverpod
class FetchDiamonds extends _$FetchDiamonds {
  @override
  DiamondState build() {
    ref.watch(userProvider).fold(() {}, _fetchAndSave);
    return const DiamondState.init();
  }

  Future<void> _fetchAndSave(
    User user, {
    int page = 1,
    int? total,
  }) async {
    state = DiamondState.fetching(current: page, total: total);
    await 500.milliseconds.delay;
    final failureOrPagination =
        await ref.read(diamondRepositoryProvider).fetchAndSave(
              user.token,
              uid: user.uid,
              page: page,
              loginType: ref.read(loginTypeProvider),
            );
    return failureOrPagination.fold(
      (failure) => state = DiamondState.failure(failure),
      (pagination) async {
        if (pagination.isLastPage) {
          state = const DiamondState.success();
          return;
        }

        final next = pagination.current + 1;
        final total = pagination.totalPage;
        _fetchAndSave(user, page: next, total: total);
      },
    );
  }
}
