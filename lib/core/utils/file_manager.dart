import 'dart:convert';
import 'dart:io';

import '../exceptions/app_failure.dart';
import '../types/types.dart';
import 'logger.dart';

class FileManager {
  factory FileManager() => _singleton ??= FileManager._();

  FileManager._();

  static FileManager? _singleton;

  Future<Json> readJson(String path) async {
    final file = File(path);
    final exists = await file.exists();
    if (!exists) {
      throw const AppFailure.localizedError('该文件不存在。');
    }
    try {
      final contents = await file.readAsString();
      return jsonDecode(contents) as Json;
    } catch (e, stackTrace) {
      logger.e(e, e, stackTrace);
      throw AppFailure.localizedError('读取文件错误。\n $e');
    }
  }

  Future<File> writeJson(Json json, {required String path}) async {
    try {
      final contents = jsonEncode(json);
      return File(path).writeAsString(contents);
    } catch (e, stackTrace) {
      logger.e(e, e, stackTrace);
      throw AppFailure.localizedError('写入文件错误。\n $e');
    }
  }
}
