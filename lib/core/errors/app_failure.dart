import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../generated/locale_keys.g.dart';

part 'app_failure.freezed.dart';

@freezed
sealed class AppFailure with _$AppFailure {
  const AppFailure._();

  const factory AppFailure.localizedError(String message) = _LocalizedError;

  const factory AppFailure.unexpectedError(Object e) = _UnexpectedError;

  const factory AppFailure.networkUnreachable() = _NetworkUnreachable;

  const factory AppFailure.remoteServerError({
    int? code,
    String? message,
  }) = _RemoteServerError;

  const factory AppFailure.emptyLocalData() = _EmptyLocalData;

  const factory AppFailure.invalidToken() = _InvalidToken;

  AsyncValue<T> toAsyncError<T>() => AsyncValue.error(this, StackTrace.current);

  String get localizedMessage => map(
        localizedError: (f) => f.message,
        unexpectedError: (f) =>
            '${LocaleKeys.error_unexpectedError.tr()}\n${f.e}',
        networkUnreachable: (_) => LocaleKeys.error_networkUnreachable.tr(),
        remoteServerError: (f) {
          final code = f.code == null ? '' : '[${f.code}]';
          final message = f.message ?? LocaleKeys.error_remoteServerError.tr();
          return '$code$message';
        },
        emptyLocalData: (_) => LocaleKeys.error_emptyLocalData.tr(),
        invalidToken: (_) => LocaleKeys.error_invalidToken.tr(),
      );
}
