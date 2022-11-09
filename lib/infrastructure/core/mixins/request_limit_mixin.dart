import '../../../core/constants/constants.dart';
import '../extensions/date_time_formatter.dart';

class RequestLimitMixin {
  DateTime? _lastRequestDateTime;
  String? get lastRequestDateTimeString => _lastRequestDateTime?.yMMMdHmsString;

  void requestWithLimit(
    void Function() request, {
    void Function()? onFailure,
  }) {
    final limitedUntil = _lastRequestDateTime?.add(minRequestInterval);
    final canRequest = limitedUntil?.isBefore(DateTime.now()) ?? true;
    if (canRequest) {
      request();
    } else {
      onFailure?.call();
    }
  }

  void notifyRequestComplete() => _lastRequestDateTime = DateTime.now();
}
