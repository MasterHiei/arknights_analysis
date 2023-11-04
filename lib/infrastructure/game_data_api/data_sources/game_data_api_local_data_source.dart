import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/enums/prefs_key.dart';
import '../../../core/providers/prefs_provider.dart';

part 'game_data_api_local_data_source.g.dart';

@riverpod
GameDataApiLocalDataSource gameDataApiLocalDataSource(
  GameDataApiLocalDataSourceRef ref,
) =>
    GameDataApiLocalDataSourceImpl(ref.watch(prefsProvider));

abstract class GameDataApiLocalDataSource {
  String? getLastGachaTableUpdateDateTime();

  Future<bool> setLastGachaTableUpdateDateTime(String value);
}

class GameDataApiLocalDataSourceImpl implements GameDataApiLocalDataSource {
  const GameDataApiLocalDataSourceImpl(this._prefs);

  final SharedPreferences _prefs;

  @override
  String? getLastGachaTableUpdateDateTime() =>
      _prefs.getString(PrefsKeys.lastGachaTableUpdateDateTime.name);

  @override
  Future<bool> setLastGachaTableUpdateDateTime(String value) =>
      _prefs.setString(PrefsKeys.lastGachaTableUpdateDateTime.name, value);
}
