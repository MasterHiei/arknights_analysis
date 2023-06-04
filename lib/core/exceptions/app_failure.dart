import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_failure.freezed.dart';

@freezed
class AppFailure with _$AppFailure {
  const AppFailure._();

  const factory AppFailure.localizedError(String message) = _LocalizedError;

  const factory AppFailure.unexpectedError(Object e) = _UnexpectedError;

  const factory AppFailure.networkUnreachable() = _NetworkUnreachable;

  const factory AppFailure.remoteServerError({
    String? message,
    int? code,
  }) = _RemoteServerError;

  const factory AppFailure.localDataError(Object e) = _LocalDataError;

  const factory AppFailure.emptyLocalData() = _EmptyLocalData;

  const factory AppFailure.invalidToken() = _InvalidToken;

  String get localizedMessage => map(
        localizedError: (f) => f.message,
        unexpectedError: (f) => '${'unexpectedError'.tr()}\n ${f.e}',
        networkUnreachable: (_) => 'networkUnreachable'.tr(),
        remoteServerError: (f) {
          final status = f.code == null ? '' : '[${f.code}]';
          final message = f.message ?? 'remoteServerError'.tr();
          return '$status$message';
        },
        localDataError: (f) => '${'localDataError'.tr()}\n${f.e}',
        emptyLocalData: (_) => 'emptyLocalData'.tr(),
        invalidToken: (_) => 'invalidToken'.tr(),
      );
}
