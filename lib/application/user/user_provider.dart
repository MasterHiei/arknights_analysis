import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/user/value_objects/token.dart';
import '../../infrastructure/user/user_repository.dart';
import 'states/user_state.dart';

final userProvider =
    StateNotifierProvider.autoDispose.family<UserNotifier, UserState, Token>(
  (ref, Token token) => UserNotifier(
    token,
    ref.watch(userRepositoryProvider),
  ),
);

class UserNotifier extends StateNotifier<UserState> {
  UserNotifier(
    this._token,
    this._repository,
  ) : super(UserState.init()) {
    _fetchAndUpdate();
    _watch();
  }

  final Token _token;
  final UserRepository _repository;

  Future<void> _fetchAndUpdate() async {
    final failureOrSuccess = await _repository.fetchAndUpdate(_token);
    failureOrSuccess.fold(
      (f) => state = state.copyWith(failureOption: optionOf(f)),
      (_) {},
    );
  }

  void _watch() => _repository.watch(_token).listen(
        (userOption) => state = state.copyWith(
          userOption: userOption,
          failureOption: none(),
        ),
      );
}
