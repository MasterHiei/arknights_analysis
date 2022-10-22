import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/exceptions/app_failure.dart';

part 'download_new_version_state.freezed.dart';

@freezed
class DownloadNewVersionState with _$DownloadNewVersionState {
  const factory DownloadNewVersionState.init() = _Init;

  const factory DownloadNewVersionState.beginDownload() = _BeginDownload;

  const factory DownloadNewVersionState.downloading(
    String progress,
  ) = _Downloading;

  const factory DownloadNewVersionState.success(
    File file,
  ) = _DownloadSuccess;

  const factory DownloadNewVersionState.failure(
    AppFailure failure,
  ) = _DownloadFailure;
}
