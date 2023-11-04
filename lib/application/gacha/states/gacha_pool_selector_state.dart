import 'package:freezed_annotation/freezed_annotation.dart';

part 'gacha_pool_selector_state.freezed.dart';

@freezed
class GachaPoolSelectorState with _$GachaPoolSelectorState {
  const factory GachaPoolSelectorState({
    required List<String> source,
    String? value,
  }) = _GachaPoolSelectorState;

  factory GachaPoolSelectorState.init({
    Iterable<String> source = const Iterable.empty(),
  }) =>
      GachaPoolSelectorState(
        source: source.toList(),
      );
}
