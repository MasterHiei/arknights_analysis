import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/errors/app_failure.dart';

part 'persistence_manager_state.freezed.dart';

@freezed
class PersistenceManagerState with _$PersistenceManagerState {
  const factory PersistenceManagerState.idle() = _Idle;

  const factory PersistenceManagerState.processing() = _Processing;

  const factory PersistenceManagerState.importSuccess() = _ImportSuccess;

  const factory PersistenceManagerState.importFailure(
    AppFailure failure,
  ) = _ImportFailure;

  const factory PersistenceManagerState.exportSuccess(
    File file,
  ) = _ExportSuccess;

  const factory PersistenceManagerState.exportFailure(
    AppFailure failure,
  ) = _ExportFailure;
}
