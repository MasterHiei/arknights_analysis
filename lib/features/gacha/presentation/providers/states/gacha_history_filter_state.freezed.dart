// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gacha_history_filter_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GachaHistoryFilterState {

 List<String> get pools => throw _privateConstructorUsedError; bool get showAllPools => throw _privateConstructorUsedError; List<String> get selectedPools => throw _privateConstructorUsedError; List<Rarity> get selectedRarities => throw _privateConstructorUsedError;







@JsonKey(ignore: true)
$GachaHistoryFilterStateCopyWith<GachaHistoryFilterState> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $GachaHistoryFilterStateCopyWith<$Res>  {
  factory $GachaHistoryFilterStateCopyWith(GachaHistoryFilterState value, $Res Function(GachaHistoryFilterState) then) = _$GachaHistoryFilterStateCopyWithImpl<$Res, GachaHistoryFilterState>;
@useResult
$Res call({
 List<String> pools, bool showAllPools, List<String> selectedPools, List<Rarity> selectedRarities
});



}

/// @nodoc
class _$GachaHistoryFilterStateCopyWithImpl<$Res,$Val extends GachaHistoryFilterState> implements $GachaHistoryFilterStateCopyWith<$Res> {
  _$GachaHistoryFilterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

@pragma('vm:prefer-inline') @override $Res call({Object? pools = null,Object? showAllPools = null,Object? selectedPools = null,Object? selectedRarities = null,}) {
  return _then(_value.copyWith(
pools: null == pools ? _value.pools : pools // ignore: cast_nullable_to_non_nullable
as List<String>,showAllPools: null == showAllPools ? _value.showAllPools : showAllPools // ignore: cast_nullable_to_non_nullable
as bool,selectedPools: null == selectedPools ? _value.selectedPools : selectedPools // ignore: cast_nullable_to_non_nullable
as List<String>,selectedRarities: null == selectedRarities ? _value.selectedRarities : selectedRarities // ignore: cast_nullable_to_non_nullable
as List<Rarity>,
  )as $Val);
}

}


/// @nodoc
abstract class _$$GachaHistoryFilterStateImplCopyWith<$Res> implements $GachaHistoryFilterStateCopyWith<$Res> {
  factory _$$GachaHistoryFilterStateImplCopyWith(_$GachaHistoryFilterStateImpl value, $Res Function(_$GachaHistoryFilterStateImpl) then) = __$$GachaHistoryFilterStateImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<String> pools, bool showAllPools, List<String> selectedPools, List<Rarity> selectedRarities
});



}

/// @nodoc
class __$$GachaHistoryFilterStateImplCopyWithImpl<$Res> extends _$GachaHistoryFilterStateCopyWithImpl<$Res, _$GachaHistoryFilterStateImpl> implements _$$GachaHistoryFilterStateImplCopyWith<$Res> {
  __$$GachaHistoryFilterStateImplCopyWithImpl(_$GachaHistoryFilterStateImpl _value, $Res Function(_$GachaHistoryFilterStateImpl) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? pools = null,Object? showAllPools = null,Object? selectedPools = null,Object? selectedRarities = null,}) {
  return _then(_$GachaHistoryFilterStateImpl(
pools: null == pools ? _value._pools : pools // ignore: cast_nullable_to_non_nullable
as List<String>,showAllPools: null == showAllPools ? _value.showAllPools : showAllPools // ignore: cast_nullable_to_non_nullable
as bool,selectedPools: null == selectedPools ? _value._selectedPools : selectedPools // ignore: cast_nullable_to_non_nullable
as List<String>,selectedRarities: null == selectedRarities ? _value._selectedRarities : selectedRarities // ignore: cast_nullable_to_non_nullable
as List<Rarity>,
  ));
}


}

/// @nodoc


class _$GachaHistoryFilterStateImpl  implements _GachaHistoryFilterState {
  const _$GachaHistoryFilterStateImpl({required final  List<String> pools, required this.showAllPools, required final  List<String> selectedPools, required final  List<Rarity> selectedRarities}): _pools = pools,_selectedPools = selectedPools,_selectedRarities = selectedRarities;

  

 final  List<String> _pools;
@override List<String> get pools {
  if (_pools is EqualUnmodifiableListView) return _pools;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pools);
}

@override final  bool showAllPools;
 final  List<String> _selectedPools;
@override List<String> get selectedPools {
  if (_selectedPools is EqualUnmodifiableListView) return _selectedPools;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selectedPools);
}

 final  List<Rarity> _selectedRarities;
@override List<Rarity> get selectedRarities {
  if (_selectedRarities is EqualUnmodifiableListView) return _selectedRarities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selectedRarities);
}


@override
String toString() {
  return 'GachaHistoryFilterState(pools: $pools, showAllPools: $showAllPools, selectedPools: $selectedPools, selectedRarities: $selectedRarities)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$GachaHistoryFilterStateImpl&&const DeepCollectionEquality().equals(other._pools, _pools)&&(identical(other.showAllPools, showAllPools) || other.showAllPools == showAllPools)&&const DeepCollectionEquality().equals(other._selectedPools, _selectedPools)&&const DeepCollectionEquality().equals(other._selectedRarities, _selectedRarities));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_pools),showAllPools,const DeepCollectionEquality().hash(_selectedPools),const DeepCollectionEquality().hash(_selectedRarities));

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$GachaHistoryFilterStateImplCopyWith<_$GachaHistoryFilterStateImpl> get copyWith => __$$GachaHistoryFilterStateImplCopyWithImpl<_$GachaHistoryFilterStateImpl>(this, _$identity);








}


abstract class _GachaHistoryFilterState implements GachaHistoryFilterState {
  const factory _GachaHistoryFilterState({required final  List<String> pools, required final  bool showAllPools, required final  List<String> selectedPools, required final  List<Rarity> selectedRarities}) = _$GachaHistoryFilterStateImpl;
  

  

@override  List<String> get pools;@override  bool get showAllPools;@override  List<String> get selectedPools;@override  List<Rarity> get selectedRarities;
@override @JsonKey(ignore: true)
_$$GachaHistoryFilterStateImplCopyWith<_$GachaHistoryFilterStateImpl> get copyWith => throw _privateConstructorUsedError;

}
