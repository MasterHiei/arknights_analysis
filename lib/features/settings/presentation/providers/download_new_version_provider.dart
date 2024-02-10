import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/errors/app_failure.dart';
import '../../../../core/providers/dio_provider.dart';
import '../../../../core/providers/file_picker_provider.dart';
import 'states/download_new_version_state.dart';

part 'download_new_version_provider.g.dart';

@riverpod
class DownloadNewVersion extends _$DownloadNewVersion {
  @override
  DownloadNewVersionState build() => const DownloadNewVersionState.init();

  Future<void> download(
    String url, {
    required String fileName,
  }) async {
    final directory = await getDownloadsDirectory();
    final destination = await ref.read(filePickerProvider).saveFile(
          fileName: fileName,
          initialDirectory: directory?.path,
        );
    if (destination == null) {
      return;
    }

    state = const DownloadNewVersionState.preparing();

    try {
      await ref.read(dioProvider()).download(
        url,
        destination,
        onReceiveProgress: (count, total) {
          final percent = count / total;
          state = DownloadNewVersionState.downloading(
            '正在下载：${percent.toStringAsFixed(2)}%',
          );
        },
      );
      state = DownloadNewVersionState.success(File(destination));
    } catch (e) {
      final failure = AppFailure.unexpectedError(e);
      state = DownloadNewVersionState.failure(failure);
    }
  }
}
