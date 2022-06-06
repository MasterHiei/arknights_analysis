import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final gachaPieChartProvider = ChangeNotifierProvider.autoDispose(
  (_) => GachaPieChartNotifier(),
);

class GachaPieChartNotifier extends ChangeNotifier {
  var _touchedIndex = -1;

  void touch(int touchedIndex) {
    _touchedIndex = touchedIndex;
    notifyListeners();
  }

  bool isTouched(int index) => index == _touchedIndex;
}
