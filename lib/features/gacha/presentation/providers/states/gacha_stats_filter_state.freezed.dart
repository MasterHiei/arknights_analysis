// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gacha_stats_filter_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GachaStatsFilterState {

 List<String> get source => throw _privateConstructorUsedError; String? get value => throw _privateConstructorUsedError;







@JsonKey(ignore: true)
$GachaStatsFilterStateCopyWith<GachaStatsFilterState> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $GachaStatsFilterStateCopyWith<$Res>  {
  factory $GachaStatsFilterStateCopyWith(GachaStatsFilterState value, $Res Function(GachaStatsFilterState) then) = _$GachaStatsFilterStateCopyWithImpl<$Res, GachaStatsFilterState>;
@useResult
$Res call({
 List<String> source, String? value
});



}

/// @nodoc
class _$GachaStatsFilterStateCopyWithImpl<$Res,$Val extends GachaStatsFilterState> implements $GachaStatsFilterStateCopyWith<$Res> {
  _$GachaStatsFilterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

@pragma('vm:prefer-inline') @override $Res call({Object? source = null,Object? value = freezed,}) {
  return _then(_value.copyWith(
source: null == source ? _value.source : source // ignore: cast_nullable_to_non_nullable
as List<String>,value: freezed == value ? _value.value : value // ignore: cast_nullable_to_non_nullable
as String?,
  )as $Val);
}

}


/// @nodoc
abstract class _$$GachaStatsFilterStateImplCopyWith<$Res> implements $GachaStatsFilterStateCopyWith<$Res> {
  factory _$$GachaStatsFilterStateImplCopyWith(_$GachaStatsFilterStateImpl value, $Res Function(_$GachaStatsFilterStateImpl) then) = __$$GachaStatsFilterStateImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<String> source, String? value
});



}

/// @nodoc
class __$$GachaStatsFilterStateImplCopyWithImpl<$Res> extends _$GachaStatsFilterStateCopyWithImpl<$Res, _$GachaStatsFilterStateImpl> implements _$$GachaStatsFilterStateImplCopyWith<$Res> {
  __$$GachaStatsFilterStateImplCopyWithImpl(_$GachaStatsFilterStateImpl _value, $Res Function(_$GachaStatsFilterStateImpl) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? source = null,Object? value = freezed,}) {
  return _then(_$GachaStatsFilterStateImpl(
source: null == source ? _value._source : source // ignore: cast_nullable_to_non_nullable
as List<String>,value: freezed == value ? _value.value : value // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _$GachaStatsFilterStateImpl extends _GachaStatsFilterState  {
  const _$GachaStatsFilterStateImpl({required final  List<String> source, this.value}): _source = source,super._();

  

 final  List<String> _source;
@override List<String> get source {
  if (_source is EqualUnmodifiableListView) return _source;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_source);
}

@override final  String? value;

@override
String toString() {
  return 'GachaStatsFilterState(source: $source, value: $value)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$GachaStatsFilterStateImpl&&const DeepCollectionEquality().equals(other._source, _source)&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_source),value);

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$GachaStatsFilterStateImplCopyWith<_$GachaStatsFilterStateImpl> get copyWith => __$$GachaStatsFilterStateImplCopyWithImpl<_$GachaStatsFilterStateImpl>(this, _$identity);








}


abstract class _GachaStatsFilterState extends GachaStatsFilterState {
  const factory _GachaStatsFilterState({required final  List<String> source, final  String? value}) = _$GachaStatsFilterStateImpl;
  const _GachaStatsFilterState._(): super._();

  

@override  List<String> get source;@override  String? get value;
@override @JsonKey(ignore: true)
_$$GachaStatsFilterStateImplCopyWith<_$GachaStatsFilterStateImpl> get copyWith => throw _privateConstructorUsedError;

}
