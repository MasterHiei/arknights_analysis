import 'dart:io';

import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';

import '../../core/exceptions/app_failure.dart';
import '../../core/providers/dio_provider.dart';
import '../../core/providers/file_picker_provider.dart';
import 'states/download_new_version_state.dart';

final downloadNewVersionProvider = StateNotifierProvider.autoDispose<
    DownloadNewVersionNotifier, DownloadNewVersionState>(
  (ref) => DownloadNewVersionNotifier(
    ref.watch(filePickerProvider),
    ref.watch(dioProvider),
  ),
);

class DownloadNewVersionNotifier
    extends StateNotifier<DownloadNewVersionState> {
  DownloadNewVersionNotifier(
    this._filePicker,
    this._dio,
  ) : super(const DownloadNewVersionState.init());

  final FilePicker _filePicker;
  final Dio _dio;

  Future<void> download(
    String url, {
    required String fileName,
  }) async {
    final directory = await getDownloadsDirectory();
    final destination = await _filePicker.saveFile(
      fileName: fileName,
      initialDirectory: directory?.path,
    );
    if (destination == null) {
      return;
    }

    state = const DownloadNewVersionState.preparing();
    try {
      await _dio.download(
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
