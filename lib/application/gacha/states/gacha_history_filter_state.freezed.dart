// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gacha_history_filter_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GachaHistoryFilterState {
  List<String> get pools => throw _privateConstructorUsedError;
  bool get showAllPools => throw _privateConstructorUsedError;
  List<String> get selectedPools => throw _privateConstructorUsedError;
  List<Rarity> get selectedRarities => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GachaHistoryFilterStateCopyWith<GachaHistoryFilterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GachaHistoryFilterStateCopyWith<$Res> {
  factory $GachaHistoryFilterStateCopyWith(GachaHistoryFilterState value,
          $Res Function(GachaHistoryFilterState) then) =
      _$GachaHistoryFilterStateCopyWithImpl<$Res>;
  $Res call(
      {List<String> pools,
      bool showAllPools,
      List<String> selectedPools,
      List<Rarity> selectedRarities});
}

/// @nodoc
class _$GachaHistoryFilterStateCopyWithImpl<$Res>
    implements $GachaHistoryFilterStateCopyWith<$Res> {
  _$GachaHistoryFilterStateCopyWithImpl(this._value, this._then);

  final GachaHistoryFilterState _value;
  // ignore: unused_field
  final $Res Function(GachaHistoryFilterState) _then;

  @override
  $Res call({
    Object? pools = freezed,
    Object? showAllPools = freezed,
    Object? selectedPools = freezed,
    Object? selectedRarities = freezed,
  }) {
    return _then(_value.copyWith(
      pools: pools == freezed
          ? _value.pools
          : pools // ignore: cast_nullable_to_non_nullable
              as List<String>,
      showAllPools: showAllPools == freezed
          ? _value.showAllPools
          : showAllPools // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedPools: selectedPools == freezed
          ? _value.selectedPools
          : selectedPools // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedRarities: selectedRarities == freezed
          ? _value.selectedRarities
          : selectedRarities // ignore: cast_nullable_to_non_nullable
              as List<Rarity>,
    ));
  }
}

/// @nodoc
abstract class _$$_GachaHistoryFilterStateCopyWith<$Res>
    implements $GachaHistoryFilterStateCopyWith<$Res> {
  factory _$$_GachaHistoryFilterStateCopyWith(_$_GachaHistoryFilterState value,
          $Res Function(_$_GachaHistoryFilterState) then) =
      __$$_GachaHistoryFilterStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<String> pools,
      bool showAllPools,
      List<String> selectedPools,
      List<Rarity> selectedRarities});
}

/// @nodoc
class __$$_GachaHistoryFilterStateCopyWithImpl<$Res>
    extends _$GachaHistoryFilterStateCopyWithImpl<$Res>
    implements _$$_GachaHistoryFilterStateCopyWith<$Res> {
  __$$_GachaHistoryFilterStateCopyWithImpl(_$_GachaHistoryFilterState _value,
      $Res Function(_$_GachaHistoryFilterState) _then)
      : super(_value, (v) => _then(v as _$_GachaHistoryFilterState));

  @override
  _$_GachaHistoryFilterState get _value =>
      super._value as _$_GachaHistoryFilterState;

  @override
  $Res call({
    Object? pools = freezed,
    Object? showAllPools = freezed,
    Object? selectedPools = freezed,
    Object? selectedRarities = freezed,
  }) {
    return _then(_$_GachaHistoryFilterState(
      pools: pools == freezed
          ? _value._pools
          : pools // ignore: cast_nullable_to_non_nullable
              as List<String>,
      showAllPools: showAllPools == freezed
          ? _value.showAllPools
          : showAllPools // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedPools: selectedPools == freezed
          ? _value._selectedPools
          : selectedPools // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedRarities: selectedRarities == freezed
          ? _value._selectedRarities
          : selectedRarities // ignore: cast_nullable_to_non_nullable
              as List<Rarity>,
    ));
  }
}

/// @nodoc

class _$_GachaHistoryFilterState extends _GachaHistoryFilterState {
  const _$_GachaHistoryFilterState(
      {required final List<String> pools,
      required this.showAllPools,
      required final List<String> selectedPools,
      required final List<Rarity> selectedRarities})
      : _pools = pools,
        _selectedPools = selectedPools,
        _selectedRarities = selectedRarities,
        super._();

  final List<String> _pools;
  @override
  List<String> get pools {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pools);
  }

  @override
  final bool showAllPools;
  final List<String> _selectedPools;
  @override
  List<String> get selectedPools {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedPools);
  }

  final List<Rarity> _selectedRarities;
  @override
  List<Rarity> get selectedRarities {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedRarities);
  }

  @override
  String toString() {
    return 'GachaHistoryFilterState(pools: $pools, showAllPools: $showAllPools, selectedPools: $selectedPools, selectedRarities: $selectedRarities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GachaHistoryFilterState &&
            const DeepCollectionEquality().equals(other._pools, _pools) &&
            const DeepCollectionEquality()
                .equals(other.showAllPools, showAllPools) &&
            const DeepCollectionEquality()
                .equals(other._selectedPools, _selectedPools) &&
            const DeepCollectionEquality()
                .equals(other._selectedRarities, _selectedRarities));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_pools),
      const DeepCollectionEquality().hash(showAllPools),
      const DeepCollectionEquality().hash(_selectedPools),
      const DeepCollectionEquality().hash(_selectedRarities));

  @JsonKey(ignore: true)
  @override
  _$$_GachaHistoryFilterStateCopyWith<_$_GachaHistoryFilterState>
      get copyWith =>
          __$$_GachaHistoryFilterStateCopyWithImpl<_$_GachaHistoryFilterState>(
              this, _$identity);
}

abstract class _GachaHistoryFilterState extends GachaHistoryFilterState {
  const factory _GachaHistoryFilterState(
          {required final List<String> pools,
          required final bool showAllPools,
          required final List<String> selectedPools,
          required final List<Rarity> selectedRarities}) =
      _$_GachaHistoryFilterState;
  const _GachaHistoryFilterState._() : super._();

  @override
  List<String> get pools;
  @override
  bool get showAllPools;
  @override
  List<String> get selectedPools;
  @override
  List<Rarity> get selectedRarities;
  @override
  @JsonKey(ignore: true)
  _$$_GachaHistoryFilterStateCopyWith<_$_GachaHistoryFilterState>
      get copyWith => throw _privateConstructorUsedError;
}
