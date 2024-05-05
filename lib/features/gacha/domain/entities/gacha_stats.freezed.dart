// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gacha_stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GachaStats {

 Uid get uid => throw _privateConstructorUsedError; List<GachaChar> get chars => throw _privateConstructorUsedError;







@JsonKey(ignore: true)
$GachaStatsCopyWith<GachaStats> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $GachaStatsCopyWith<$Res>  {
  factory $GachaStatsCopyWith(GachaStats value, $Res Function(GachaStats) then) = _$GachaStatsCopyWithImpl<$Res, GachaStats>;
@useResult
$Res call({
 Uid uid, List<GachaChar> chars
});



}

/// @nodoc
class _$GachaStatsCopyWithImpl<$Res,$Val extends GachaStats> implements $GachaStatsCopyWith<$Res> {
  _$GachaStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? chars = null,}) {
  return _then(_value.copyWith(
uid: null == uid ? _value.uid : uid // ignore: cast_nullable_to_non_nullable
as Uid,chars: null == chars ? _value.chars : chars // ignore: cast_nullable_to_non_nullable
as List<GachaChar>,
  )as $Val);
}

}


/// @nodoc
abstract class _$$GachaStatsImplCopyWith<$Res> implements $GachaStatsCopyWith<$Res> {
  factory _$$GachaStatsImplCopyWith(_$GachaStatsImpl value, $Res Function(_$GachaStatsImpl) then) = __$$GachaStatsImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 Uid uid, List<GachaChar> chars
});



}

/// @nodoc
class __$$GachaStatsImplCopyWithImpl<$Res> extends _$GachaStatsCopyWithImpl<$Res, _$GachaStatsImpl> implements _$$GachaStatsImplCopyWith<$Res> {
  __$$GachaStatsImplCopyWithImpl(_$GachaStatsImpl _value, $Res Function(_$GachaStatsImpl) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? chars = null,}) {
  return _then(_$GachaStatsImpl(
uid: null == uid ? _value.uid : uid // ignore: cast_nullable_to_non_nullable
as Uid,chars: null == chars ? _value._chars : chars // ignore: cast_nullable_to_non_nullable
as List<GachaChar>,
  ));
}


}

/// @nodoc


class _$GachaStatsImpl extends _GachaStats  {
  const _$GachaStatsImpl({required this.uid, required final  List<GachaChar> chars}): _chars = chars,super._();

  

@override final  Uid uid;
 final  List<GachaChar> _chars;
@override List<GachaChar> get chars {
  if (_chars is EqualUnmodifiableListView) return _chars;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_chars);
}


@override
String toString() {
  return 'GachaStats(uid: $uid, chars: $chars)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$GachaStatsImpl&&(identical(other.uid, uid) || other.uid == uid)&&const DeepCollectionEquality().equals(other._chars, _chars));
}


@override
int get hashCode => Object.hash(runtimeType,uid,const DeepCollectionEquality().hash(_chars));

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$GachaStatsImplCopyWith<_$GachaStatsImpl> get copyWith => __$$GachaStatsImplCopyWithImpl<_$GachaStatsImpl>(this, _$identity);








}


abstract class _GachaStats extends GachaStats {
  const factory _GachaStats({required final  Uid uid, required final  List<GachaChar> chars}) = _$GachaStatsImpl;
  const _GachaStats._(): super._();

  

@override  Uid get uid;@override  List<GachaChar> get chars;
@override @JsonKey(ignore: true)
_$$GachaStatsImplCopyWith<_$GachaStatsImpl> get copyWith => throw _privateConstructorUsedError;

}
