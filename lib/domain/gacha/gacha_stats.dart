import 'package:dartx/dartx.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/enums/rarity.dart';
import '../../infrastructure/core/extensions/date_time_formatter.dart';
import '../user/value_objects/uid.dart';
import 'gacha_char.dart';

part 'gacha_stats.freezed.dart';

typedef StatsPerPool = Map<String, GachaStats>;

typedef CharsPerRarity = Pair<Rarity, List<GachaChar>>;

@freezed
class GachaStats with _$GachaStats {
  const GachaStats._();

  const factory GachaStats({
    required Uid uid,
    required List<GachaChar> chars,
  }) = _GachaStats;

  //* Properties

  StatsPerPool get statsPerPool => chars
      .groupBy((char) => char.pool)
      .mapValues((entry) => GachaStats(uid: uid, chars: entry.value));

  List<CharsPerRarity> get statsPerRarity => chars
      .groupBy((char) => char.rarity)
      .mapEntries((entry) => CharsPerRarity(entry.key, entry.value))
      .toList();

  String get dateRange {
    final start = chars.minBy((char) => char.ts.dateTime)!.ts.dateTime;
    final end = chars.maxBy((char) => char.ts.dateTime)!.ts.dateTime;
    return '${start.yMMMdString} ~ ${end.yMMMdString}';
  }

  //* Methods

  List<GachaChar> filter(Rarity rarity) =>
      chars.filter((char) => char.rarity == rarity).toList();

  String caclPullRate(List<GachaChar> chars) =>
      '${((chars.length / this.chars.length) * 100).toStringAsFixed(2)}%';

  int sinceLastPull(Rarity rarity) =>
      chars.lastIndexWhere((char) => char.rarity == rarity);

  List<Pair<GachaChar, int>> filterWithPulls(Rarity rarity) {
    final pairs = <Pair<GachaChar, int>>[];
    final splittedChars = chars.splitWhen(
      (_, next) => next.rarity == rarity,
    );
    var correction = 0;
    for (final chars in splittedChars) {
      if (chars.every((char) => char.rarity != rarity)) {
        correction = chars.length;
        continue;
      }
      pairs.add(Pair(chars.first, chars.length + correction));
      correction = 0;
    }
    return pairs;
  }
}
