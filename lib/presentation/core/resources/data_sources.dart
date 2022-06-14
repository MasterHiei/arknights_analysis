import 'dart:convert';

import 'package:flutter/services.dart';

import '../../../core/types/types.dart';

enum DataSources {
  gachaTable('assets/data/gacha_table.json');

  const DataSources(this.path);

  final String path;

  Future<Json> read() async {
    final source = await rootBundle.loadString(path);
    return jsonDecode(source) as Json;
  }
}
