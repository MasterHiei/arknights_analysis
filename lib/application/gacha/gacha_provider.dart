import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/enums/ak_login_type.dart';
import '../../domain/user/user.dart';
import '../../infrastructure/gacha/gacha_repository.dart';
import '../ak_login/ak_login_type_provider.dart';
import 'states/gacha_state.dart';

final gachaProvider =
    StateNotifierProvider.autoDispose.family<GachaNotifier, GachaState, User>(
  (ref, User user) => GachaNotifier(
    user,
    ref.watch(akLoginTypeProvider),
    ref.watch(gachaRepositoryProvider),
  ),
  dependencies: [akLoginTypeProvider],
);

class GachaNotifier extends StateNotifier<GachaState> {
  GachaNotifier(
    this._user,
    this._loginTypeOption,
    this._repository,
  ) : super(const GachaState.fetching(current: 1)) {
    _fetchAndSave(_user);
  }

  final User _user;
  final AkLoginType _loginTypeOption;
  final GachaRepository _repository;

  Future<void> _fetchAndSave(
    User user, {
    int page = 1,
    int? total,
  }) async {
    state = GachaState.fetching(current: page, total: total);

    final failureOrPagination = await _repository.fetchAndSave(
      user.token,
      uid: user.uid,
      page: page,
      loginType: _loginTypeOption,
    );
    return failureOrPagination.fold(
      (failure) => state = GachaState.failure(failure),
      (pagination) async {
        if (pagination.isLastPage) {
          state = const GachaState.success();
          return;
        }

        final next = pagination.current + 1;
        final total = pagination.totalPage;
        _fetchAndSave(user, page: next, total: total);
      },
    );
  }
}
