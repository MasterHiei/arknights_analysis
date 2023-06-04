import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:time/time.dart';

import '../../core/enums/ak_login_type.dart';
import '../../domain/user/user.dart';
import '../../infrastructure/diamonds/diamond_repository.dart';
import '../ak_login/ak_login_type_provider.dart';
import '../user/user_provider.dart';
import 'states/diamond_state.dart';

final diamondProvider =
    StateNotifierProvider.autoDispose<DiamondNotifier, DiamondState>(
  (ref) => DiamondNotifier(
    ref.watch(userProvider),
    ref.watch(akLoginTypeProvider),
    ref.watch(diamondRepositoryProvider),
  ),
  dependencies: [
    userProvider,
    akLoginTypeProvider,
    diamondRepositoryProvider,
  ],
);

class DiamondNotifier extends StateNotifier<DiamondState> {
  DiamondNotifier(
    this._userOption,
    this._loginType,
    this._repository,
  ) : super(const DiamondState.fetching(current: 1)) {
    _userOption.fold(() {}, _fetchAndSave);
  }

  final Option<User> _userOption;
  final AkLoginType _loginType;
  final DiamondRepository _repository;

  Future<void> _fetchAndSave(
    User user, {
    int page = 1,
    int? total,
  }) async {
    state = DiamondState.fetching(current: page, total: total);
    await 500.milliseconds.delay;
    final failureOrPagination = await _repository.fetchAndSave(
      user.token,
      uid: user.uid,
      page: page,
      loginType: _loginType,
    );
    return failureOrPagination.fold(
      (failure) => state = DiamondState.failure(failure),
      (pagination) async {
        if (pagination.isLastPage) {
          if (!mounted) {
            state = const DiamondState.success();
          }
          return;
        }

        final next = pagination.current + 1;
        final total = pagination.totalPage;
        _fetchAndSave(user, page: next, total: total);
      },
    );
  }
}
