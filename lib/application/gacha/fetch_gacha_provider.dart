import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:time/time.dart';

import '../../domain/user/user.dart';
import '../../infrastructure/gacha/gacha_repository.dart';
import '../user/logged_in_user_info_provider.dart';
import 'gacha_pool_selector_provider.dart';
import 'states/fetch_gacha_state.dart';

part 'fetch_gacha_provider.g.dart';

@riverpod
class FetchGacha extends _$FetchGacha {
  @override
  FetchGachaState build() {
    ref.watch(userProvider).match(() {}, _fetchAndSave);
    return const FetchGachaState.init();
  }

  Future<void> _fetchAndSave(
    User user, {
    int page = 1,
    int? total,
  }) async {
    await 500.milliseconds.delay;
    state = FetchGachaState.fetching(current: page, total: total);
    final failureOrPagination =
        await ref.read(gachaRepositoryProvider).fetchAndSave(
              user.token,
              uid: user.uid,
              page: page,
              loginType: ref.read(loginTypeProvider),
            );
    return failureOrPagination.match(
      (failure) => state = FetchGachaState.failure(failure),
      (pagination) async {
        if (pagination.isLastPage) {
          state = const FetchGachaState.success();
          ref.invalidate(gachaPoolSelectorProvider);
          return;
        }

        final next = pagination.current + 1;
        final total = pagination.totalPage;
        _fetchAndSave(user, page: next, total: total);
      },
    );
  }
}
