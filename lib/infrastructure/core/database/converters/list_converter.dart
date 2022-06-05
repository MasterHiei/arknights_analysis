import 'dart:convert';

import 'package:drift/drift.dart';

class ListConverter extends TypeConverter<List<dynamic>, String> {
  const ListConverter();

  @override
  List<dynamic>? mapToDart(String? fromDb) {
    if (fromDb == null) {
      return null;
    }
    return jsonDecode(fromDb) as List?;
  }

  @override
  String? mapToSql(List<dynamic>? value) {
    if (value == null) {
      return null;
    }
    return jsonEncode(value);
  }
}
