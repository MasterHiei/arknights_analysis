import '../../../core/constants/constants.dart';

class RequestLimitMixin {
  DateTime? _lastRequestDateTime;
  DateTime? get lastRequestDateTime => _lastRequestDateTime;

  void requestWithLimit(
    void Function() request, {
    void Function()? onFailure,
  }) {
    final limitedUntil =
        _lastRequestDateTime?.add(Constants.minRequestInterval);
    final canRequest = limitedUntil?.isBefore(DateTime.now()) ?? true;
    if (canRequest) {
      request();
    } else {
      onFailure?.call();
    }
  }

  void notifyRequestComplete() => _lastRequestDateTime = DateTime.now();
}
