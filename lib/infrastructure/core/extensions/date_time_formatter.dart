import 'package:intl/intl.dart';

extension DateTimeFormatter on DateTime {
  String get yMMMdString => DateFormat.yMMMd().format(this);

  String get yMMMdHmsString => DateFormat.yMMMd().add_Hms().format(this);
}
