import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/providers.dart';

enum _PrefsKeys {
  lastGachaTableUpdateDateTime,
}

final gameDataApiLocalDataSourceProvider =
    Provider.autoDispose<GameDataApiLocalDataSource>(
  (ref) => GameDataApiLocalDataSourceImpl(ref.watch(prefsProvider)),
);

abstract class GameDataApiLocalDataSource {
  String? getLastGachaTableUpdateDateTime();

  Future<bool> setLastGachaTableUpdateDateTime(String value);
}

class GameDataApiLocalDataSourceImpl implements GameDataApiLocalDataSource {
  const GameDataApiLocalDataSourceImpl(this._prefs);

  final SharedPreferences _prefs;

  @override
  String? getLastGachaTableUpdateDateTime() =>
      _prefs.getString(_PrefsKeys.lastGachaTableUpdateDateTime.name);

  @override
  Future<bool> setLastGachaTableUpdateDateTime(String value) =>
      _prefs.setString(_PrefsKeys.lastGachaTableUpdateDateTime.name, value);
}
