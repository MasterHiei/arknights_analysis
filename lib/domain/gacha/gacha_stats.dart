import 'package:dartx/dartx.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/enums/rarity.dart';
import '../../infrastructure/core/extensions/date_time_formatter.dart';
import '../user/value_objects/uid.dart';
import 'gacha_char.dart';

part 'gacha_stats.freezed.dart';

typedef CharWithPulls = Pair<GachaChar, int>;

@freezed
class GachaStats with _$GachaStats {
  const factory GachaStats({
    required Uid uid,
    required List<GachaChar> chars,
  }) = _GachaStats;

  const GachaStats._();

  //* Properties

  String? get startDateTime =>
      chars.minBy((char) => char.ts.dateTime)?.ts.dateTime.yMMMdHmsString;

  String? get endDateTime =>
      chars.maxBy((char) => char.ts.dateTime)?.ts.dateTime.yMMMdHmsString;

  //* Methods

  List<GachaChar> filter(Rarity rarity) =>
      chars.filter((char) => char.rarity == rarity).toList();

  String caclPullRate(Rarity rarity) =>
      '${((filter(rarity).length / chars.length) * 100).toStringAsFixed(2)}%';

  int sinceLastPull(Rarity rarity) {
    final index = chars.indexWhere((char) => char.rarity == rarity);
    return index == -1 ? chars.length : index;
  }

  List<CharWithPulls> filterCharWithPulls(Rarity rarity) {
    final pairs = <Pair<GachaChar, int>>[];
    final splittedChars = chars.splitWhen(
      (_, next) => next.rarity == rarity,
    );
    var correction = 0;
    for (final chars in splittedChars.reversed) {
      if (chars.every((char) => char.rarity != rarity)) {
        correction = chars.length;
        continue;
      }
      pairs.add(Pair(chars.first, chars.length + correction));
      correction = 0;
    }
    return pairs;
  }

  String caclAvgPulls(Rarity rarity) {
    final pulls = _filterPulls(rarity);
    if (pulls.isEmpty) {
      return '0';
    }
    final amount = pulls.reduce((v, e) => v + e);
    return (amount / pulls.length).toStringAsFixed(2);
  }

  String caclMinPulls(Rarity rarity) {
    final min = _filterPulls(rarity).min();
    if (min == null) {
      return '0';
    }
    return '$min';
  }

  String caclMaxPulls(Rarity rarity) {
    final max = _filterPulls(rarity).max();
    if (max == null) {
      return '0';
    }
    return '$max';
  }

  Iterable<int> _filterPulls(Rarity rarity) =>
      filterCharWithPulls(rarity).map((pair) => pair.second);
}
