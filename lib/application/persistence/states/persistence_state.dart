import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/errors/app_failure.dart';

part 'persistence_state.freezed.dart';

@freezed
class PersistenceState with _$PersistenceState {
  const factory PersistenceState.idle() = _Idle;

  const factory PersistenceState.processing() = _Processing;

  const factory PersistenceState.importSuccess() = _ImportSuccess;

  const factory PersistenceState.importFailure(
    AppFailure failure,
  ) = _ImportFailure;

  const factory PersistenceState.exportSuccess(
    File file,
  ) = _ExportSuccess;

  const factory PersistenceState.exportFailure(
    AppFailure failure,
  ) = _ExportFailure;
}
