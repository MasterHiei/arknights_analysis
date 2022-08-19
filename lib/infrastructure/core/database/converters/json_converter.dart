import 'dart:convert';

import 'package:drift/drift.dart';

import '../../../../core/types/types.dart';

class JsonConverter extends TypeConverter<Json, String> {
  const JsonConverter();

  @override
  Json fromSql(String fromDb) => jsonDecode(fromDb) as Json;

  @override
  String toSql(Json value) => jsonEncode(value);
}
