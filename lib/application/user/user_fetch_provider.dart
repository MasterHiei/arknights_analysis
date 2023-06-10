import 'package:dartz/dartz.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/constants/constants.dart';
import '../../core/enums/ak_login_type.dart';
import '../../domain/user/user.dart';
import '../../domain/user/value_objects/token.dart';
import '../../infrastructure/core/mixins/debounce_mixin.dart';
import '../../infrastructure/core/mixins/request_limit_mixin.dart';
import '../../infrastructure/user/user_repository.dart';
import '../../presentation/core/common/widgets/app_flush_bar.dart';
import '../ak_login/ak_login_type_provider.dart';
import 'token_provider.dart';
import 'user_provider.dart';

final userFetchProvider =
    StateNotifierProvider.autoDispose<UserFetchNotifier, AsyncValue<void>>(
  (ref) => UserFetchNotifier(
    ref.watch(tokenProvider),
    ref.watch(akLoginTypeProvider),
    ref.watch(userProvider.notifier),
    ref.watch(userRepositoryProvider),
  ),
  dependencies: [
    tokenProvider,
    akLoginTypeProvider,
    userRepositoryProvider,
  ],
);

class UserFetchNotifier extends StateNotifier<AsyncValue<void>>
    with DebounceMixin, RequestLimitMixin {
  UserFetchNotifier(
    this._tokenOption,
    this._loginTypeOption,
    this._userProvider,
    this._repository,
  ) : super(const AsyncValue.loading()) {
    _fetchAndUpdate();
  }

  final Option<Token> _tokenOption;
  final AkLoginType _loginTypeOption;
  final StateController<Option<User>> _userProvider;
  final UserRepository _repository;

  @override
  void dispose() {
    cancelDebounce();
    super.dispose();
  }

  void refresh(BuildContext context) => requestWithLimit(
        () => debounce(_fetchAndUpdate),
        onFailure: () => AppFlushBar.show(
          context,
          message: '太快了吧！这还不到${Constants.minRequestInterval.inMinutes}分钟呢！',
          severity: FlushBarSeverity.warning,
        ),
      );

  Future<void> _fetchAndUpdate() async {
    _tokenOption.fold(
      () {},
      (token) async {
        state = const AsyncValue.loading();
        final failureOrSuccess = await _repository.fetchAndUpdate(
          token,
          loginType: _loginTypeOption,
        );
        state = await AsyncValue.guard(
          () => failureOrSuccess.fold(
            (failure) => throw failure,
            (_) {
              notifyRequestComplete();
              return _get(token);
            },
          ),
        );
      },
    );
  }

  Future<void> _get(Token token) async {
    final failureOrUser = await _repository.get(token);
    return failureOrUser.fold(
      (failure) => throw failure,
      (user) => _userProvider.update((_) => optionOf(user)),
    );
  }
}
