import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final paneProvider = ChangeNotifierProvider.autoDispose(
  (_) => PaneNotifier(),
);

class PaneNotifier extends ChangeNotifier {
  var _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;

  void select(int index) {
    if (isSelected(index)) {
      return;
    }
    _selectedIndex = index;
    notifyListeners();
  }

  bool isSelected(int index) => index == _selectedIndex;
}
