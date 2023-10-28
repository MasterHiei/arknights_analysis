import 'package:easy_localization/easy_localization.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../core/constants/constants.dart';
import '../../domain/user/value_objects/token.dart';
import '../../generated/locale_keys.g.dart';
import '../../infrastructure/core/mixins/debounce_mixin.dart';
import '../../infrastructure/core/mixins/request_limit_mixin.dart';
import '../../infrastructure/user/user_repository.dart';
import '../../presentation/core/common/widgets/app_flush_bar.dart';
import 'logged_in_user_info_provider.dart';

part 'fetch_user_provider.g.dart';

@riverpod
class FetchUser extends _$FetchUser with DebounceMixin, RequestLimitMixin {
  UserRepository get _repository => ref.read(userRepositoryProvider);

  @override
  Future<void> build() async {
    ref.onDispose(cancelDebounce);
    await _fetchAndUpdate();
  }

  void refresh(BuildContext context) => requestWithLimit(
        () => debounce(_fetchAndUpdate),
        onFailure: () => AppFlushBar.show(
          context,
          message: LocaleKeys.features_gachaStats_updateTooFrequently.tr(
            namedArgs: {'minutes': '${Constants.minRequestInterval.inMinutes}'},
          ),
          severity: FlushBarSeverity.warning,
        ),
      );

  Future<void> _fetchAndUpdate() => ref.read(tokenProvider).fold(
        () async {},
        (token) async {
          state = const AsyncValue.loading();
          final failureOrSuccess = await _repository.fetchAndUpdate(
            token,
            loginType: ref.read(loginTypeProvider),
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

  Future<void> _get(Token token) async {
    final failureOrUser = await _repository.get(token);
    return failureOrUser.fold(
      (failure) => throw failure,
      ref.read(loggedInUserInfoProvider.notifier).updateUser,
    );
  }
}
