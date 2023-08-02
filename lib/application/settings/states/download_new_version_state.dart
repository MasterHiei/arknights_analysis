import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/exceptions/app_failure.dart';
import '../../../generated/locale_keys.g.dart';

part 'download_new_version_state.freezed.dart';

@freezed
class DownloadNewVersionState with _$DownloadNewVersionState {
  const factory DownloadNewVersionState.init() = _Init;

  const factory DownloadNewVersionState.preparing() = _Preparing;

  const factory DownloadNewVersionState.downloading(
    String progress,
  ) = _Downloading;

  const factory DownloadNewVersionState.success(
    File file,
  ) = _DownloadSuccess;

  const factory DownloadNewVersionState.failure(
    AppFailure failure,
  ) = _DownloadFailure;

  const DownloadNewVersionState._();

  bool get isDownloading => maybeMap(
        preparing: (_) => true,
        downloading: (_) => true,
        orElse: () => false,
      );

  String get downloadProgress => maybeMap(
        preparing: (_) => LocaleKeys.app_update_preparing.tr(),
        downloading: (state) => state.progress,
        orElse: () => '',
      );
}
