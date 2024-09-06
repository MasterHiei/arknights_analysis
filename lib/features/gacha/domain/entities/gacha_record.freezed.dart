// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gacha_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GachaRecord {

 Ts get ts => throw _privateConstructorUsedError; String get pool => throw _privateConstructorUsedError; List<GachaChar> get chars => throw _privateConstructorUsedError; Uid get uid => throw _privateConstructorUsedError;







/// Create a copy of GachaRecord
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$GachaRecordCopyWith<GachaRecord> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $GachaRecordCopyWith<$Res>  {
  factory $GachaRecordCopyWith(GachaRecord value, $Res Function(GachaRecord) then) = _$GachaRecordCopyWithImpl<$Res, GachaRecord>;
@useResult
$Res call({
 Ts ts, String pool, List<GachaChar> chars, Uid uid
});



}

/// @nodoc
class _$GachaRecordCopyWithImpl<$Res,$Val extends GachaRecord> implements $GachaRecordCopyWith<$Res> {
  _$GachaRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of GachaRecord
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ts = null,Object? pool = null,Object? chars = null,Object? uid = null,}) {
  return _then(_value.copyWith(
ts: null == ts ? _value.ts : ts // ignore: cast_nullable_to_non_nullable
as Ts,pool: null == pool ? _value.pool : pool // ignore: cast_nullable_to_non_nullable
as String,chars: null == chars ? _value.chars : chars // ignore: cast_nullable_to_non_nullable
as List<GachaChar>,uid: null == uid ? _value.uid : uid // ignore: cast_nullable_to_non_nullable
as Uid,
  )as $Val);
}

}


/// @nodoc
abstract class _$$GachaRecordImplCopyWith<$Res> implements $GachaRecordCopyWith<$Res> {
  factory _$$GachaRecordImplCopyWith(_$GachaRecordImpl value, $Res Function(_$GachaRecordImpl) then) = __$$GachaRecordImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 Ts ts, String pool, List<GachaChar> chars, Uid uid
});



}

/// @nodoc
class __$$GachaRecordImplCopyWithImpl<$Res> extends _$GachaRecordCopyWithImpl<$Res, _$GachaRecordImpl> implements _$$GachaRecordImplCopyWith<$Res> {
  __$$GachaRecordImplCopyWithImpl(_$GachaRecordImpl _value, $Res Function(_$GachaRecordImpl) _then)
      : super(_value, _then);


/// Create a copy of GachaRecord
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ts = null,Object? pool = null,Object? chars = null,Object? uid = null,}) {
  return _then(_$GachaRecordImpl(
ts: null == ts ? _value.ts : ts // ignore: cast_nullable_to_non_nullable
as Ts,pool: null == pool ? _value.pool : pool // ignore: cast_nullable_to_non_nullable
as String,chars: null == chars ? _value._chars : chars // ignore: cast_nullable_to_non_nullable
as List<GachaChar>,uid: null == uid ? _value.uid : uid // ignore: cast_nullable_to_non_nullable
as Uid,
  ));
}


}

/// @nodoc


class _$GachaRecordImpl  implements _GachaRecord {
  const _$GachaRecordImpl({required this.ts, required this.pool, required final  List<GachaChar> chars, required this.uid}): _chars = chars;

  

@override final  Ts ts;
@override final  String pool;
 final  List<GachaChar> _chars;
@override List<GachaChar> get chars {
  if (_chars is EqualUnmodifiableListView) return _chars;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_chars);
}

@override final  Uid uid;

@override
String toString() {
  return 'GachaRecord(ts: $ts, pool: $pool, chars: $chars, uid: $uid)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$GachaRecordImpl&&(identical(other.ts, ts) || other.ts == ts)&&(identical(other.pool, pool) || other.pool == pool)&&const DeepCollectionEquality().equals(other._chars, _chars)&&(identical(other.uid, uid) || other.uid == uid));
}


@override
int get hashCode => Object.hash(runtimeType,ts,pool,const DeepCollectionEquality().hash(_chars),uid);

/// Create a copy of GachaRecord
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$GachaRecordImplCopyWith<_$GachaRecordImpl> get copyWith => __$$GachaRecordImplCopyWithImpl<_$GachaRecordImpl>(this, _$identity);








}


abstract class _GachaRecord implements GachaRecord {
  const factory _GachaRecord({required final  Ts ts, required final  String pool, required final  List<GachaChar> chars, required final  Uid uid}) = _$GachaRecordImpl;
  

  

@override Ts get ts;@override String get pool;@override List<GachaChar> get chars;@override Uid get uid;
/// Create a copy of GachaRecord
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$GachaRecordImplCopyWith<_$GachaRecordImpl> get copyWith => throw _privateConstructorUsedError;

}
