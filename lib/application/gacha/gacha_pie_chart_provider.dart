import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/enums/rarity.dart';

final gachaPieChartProvider = ChangeNotifierProvider.autoDispose(
  (_) => GachaPieChartNotifier(),
);

class GachaPieChartNotifier extends ChangeNotifier {
  Rarity? _touchedRarity;

  void touch(Rarity? rarity) {
    if (isTouched(rarity)) {
      return;
    }
    _touchedRarity = rarity;
    notifyListeners();
  }

  bool isTouched(Rarity? rarity) => rarity != null && rarity == _touchedRarity;
}
