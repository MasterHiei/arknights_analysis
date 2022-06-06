import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/user/value_objects/uid.dart';
import '../../infrastructure/gacha/gacha_repository.dart';

final gachaStatsProvider = StreamProvider.autoDispose.family(
  (ref, Uid uid) => ref.watch(gachaRepositoryProvider).watchStats(uid),
);
