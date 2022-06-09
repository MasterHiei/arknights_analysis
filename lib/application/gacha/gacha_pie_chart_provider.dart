import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/enums/rarity.dart';

final gachaPieChartProvider = ChangeNotifierProvider.autoDispose.family(
  (_, String pool) => GachaPieChartNotifier(pool),
);

class GachaPieChartNotifier extends ChangeNotifier {
  GachaPieChartNotifier(this.pool);

  final String pool;

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
