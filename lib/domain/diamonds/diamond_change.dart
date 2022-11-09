import 'package:fluent_ui/fluent_ui.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/common/value_objects/ts.dart';

part 'diamond_change.freezed.dart';

@freezed
class DiamondChange with _$DiamondChange {
  const factory DiamondChange({
    required String operation,
    required String type,
    required int before,
    required int after,
    required Ts ts,
  }) = _DiamondChange;

  const DiamondChange._();

  String get description {
    final diff = after - before;
    if (diff > 0) {
      return '+$diff';
    }
    return diff.toString();
  }

  Color? get textColor {
    if (description.startsWith('+')) {
      return Colors.successPrimaryColor;
    }
    if (description.startsWith('-')) {
      return Colors.errorPrimaryColor;
    }
    return null;
  }
}
