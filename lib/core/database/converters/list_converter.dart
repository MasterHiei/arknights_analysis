import 'dart:convert';

import 'package:drift/drift.dart';

class ListConverter extends TypeConverter<List<dynamic>, String> {
  const ListConverter();

  @override
  List<dynamic> fromSql(String fromDb) => jsonDecode(fromDb) as List;

  @override
  String toSql(List<dynamic> value) => jsonEncode(value);
}
