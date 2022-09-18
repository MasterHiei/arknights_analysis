import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/exceptions/app_failure.dart';

part 'gacha_history_persistence_state.freezed.dart';

@freezed
class GachaHistoryPersistenceState with _$GachaHistoryPersistenceState {
  const factory GachaHistoryPersistenceState.init() = _Init;

  const factory GachaHistoryPersistenceState.processing() = _Processing;

  const factory GachaHistoryPersistenceState.importSuccess() = _ImportSuccess;

  const factory GachaHistoryPersistenceState.importFailure(
    AppFailure failure,
  ) = _ImportFailure;

  const factory GachaHistoryPersistenceState.exportSuccess(
    File file,
  ) = _ExportSuccess;

  const factory GachaHistoryPersistenceState.exportFailure(
    AppFailure failure,
  ) = _ExportFailure;
}
