import 'dart:convert';

import 'package:drift/drift.dart';

import '../../../../core/types/types.dart';

class JsonConverter extends TypeConverter<Json, String> {
  const JsonConverter();

  @override
  Json? mapToDart(String? fromDb) {
    if (fromDb == null) {
      return null;
    }
    return jsonDecode(fromDb) as Json?;
  }

  @override
  String? mapToSql(Json? value) {
    if (value == null) {
      return null;
    }
    return jsonEncode(value);
  }
}
