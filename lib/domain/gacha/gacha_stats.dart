import 'package:dartx/dartx.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/enums/rarity.dart';
import '../../infrastructure/core/extensions/date_time_formatter.dart';
import '../user/value_objects/uid.dart';
import 'gacha_char.dart';

part 'gacha_stats.freezed.dart';

typedef StatsPerPool = Map<String, GachaStats>;

typedef CharsPerRarity = Pair<Rarity, GachaStats>;

typedef CharWithPulls = Pair<GachaChar, int>;

@freezed
class GachaStats with _$GachaStats {
  const factory GachaStats({
    required Uid uid,
    required List<GachaChar> chars,
  }) = _GachaStats;

  const GachaStats._();

  //* Properties

  StatsPerPool get statsPerPool => chars
      .groupBy((char) => char.pool)
      .mapValues((entry) => GachaStats(uid: uid, chars: entry.value));

  List<CharsPerRarity> get statsPerRarity => chars
      .groupBy((char) => char.rarity)
      .mapEntries(
        (entry) => CharsPerRarity(
          entry.key,
          GachaStats(uid: uid, chars: entry.value),
        ),
      )
      .toList();

  String? get dateRange {
    final start =
        chars.minBy((char) => char.ts.dateTime)?.ts.dateTime.yMMMdString;
    final end =
        chars.maxBy((char) => char.ts.dateTime)?.ts.dateTime.yMMMdString;
    if (start == null || start == end) {
      return start;
    }
    return '$start ~ $end';
  }

  //* Methods

  List<GachaChar> filter(Rarity rarity) =>
      chars.filter((char) => char.rarity == rarity).toList();

  String caclPullRate(Rarity rarity) =>
      '${((filter(rarity).length / chars.length) * 100).toStringAsFixed(2)}%';

  int sinceLastPull(Rarity rarity) {
    final index = chars.indexWhere((char) => char.rarity == rarity);
    return index == -1 ? chars.length : index;
  }

  List<CharWithPulls> filterWithPulls(Rarity rarity) {
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
    final sources = filterWithPulls(rarity).map((pair) => pair.second);
    final amount = sources.reduce((v, e) => v + e);
    return (amount / sources.length).toStringAsFixed(2);
  }
}
