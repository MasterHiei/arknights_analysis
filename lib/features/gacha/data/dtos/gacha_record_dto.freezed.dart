// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gacha_record_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GachaRecordDto _$GachaRecordDtoFromJson(Map<String, dynamic> json) {
return _GachaRecordDto.fromJson(json);
}

/// @nodoc
mixin _$GachaRecordDto {

 int get ts => throw _privateConstructorUsedError; String get pool => throw _privateConstructorUsedError; List<GachaCharDto> get chars => throw _privateConstructorUsedError;@JsonKey(defaultValue: '') String get uid => throw _privateConstructorUsedError;






/// Serializes this GachaRecordDto to a JSON map.
Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
/// Create a copy of GachaRecordDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$GachaRecordDtoCopyWith<GachaRecordDto> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $GachaRecordDtoCopyWith<$Res>  {
  factory $GachaRecordDtoCopyWith(GachaRecordDto value, $Res Function(GachaRecordDto) then) = _$GachaRecordDtoCopyWithImpl<$Res, GachaRecordDto>;
@useResult
$Res call({
 int ts, String pool, List<GachaCharDto> chars,@JsonKey(defaultValue: '') String uid
});



}

/// @nodoc
class _$GachaRecordDtoCopyWithImpl<$Res,$Val extends GachaRecordDto> implements $GachaRecordDtoCopyWith<$Res> {
  _$GachaRecordDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of GachaRecordDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ts = null,Object? pool = null,Object? chars = null,Object? uid = null,}) {
  return _then(_value.copyWith(
ts: null == ts ? _value.ts : ts // ignore: cast_nullable_to_non_nullable
as int,pool: null == pool ? _value.pool : pool // ignore: cast_nullable_to_non_nullable
as String,chars: null == chars ? _value.chars : chars // ignore: cast_nullable_to_non_nullable
as List<GachaCharDto>,uid: null == uid ? _value.uid : uid // ignore: cast_nullable_to_non_nullable
as String,
  )as $Val);
}

}


/// @nodoc
abstract class _$$GachaRecordDtoImplCopyWith<$Res> implements $GachaRecordDtoCopyWith<$Res> {
  factory _$$GachaRecordDtoImplCopyWith(_$GachaRecordDtoImpl value, $Res Function(_$GachaRecordDtoImpl) then) = __$$GachaRecordDtoImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 int ts, String pool, List<GachaCharDto> chars,@JsonKey(defaultValue: '') String uid
});



}

/// @nodoc
class __$$GachaRecordDtoImplCopyWithImpl<$Res> extends _$GachaRecordDtoCopyWithImpl<$Res, _$GachaRecordDtoImpl> implements _$$GachaRecordDtoImplCopyWith<$Res> {
  __$$GachaRecordDtoImplCopyWithImpl(_$GachaRecordDtoImpl _value, $Res Function(_$GachaRecordDtoImpl) _then)
      : super(_value, _then);


/// Create a copy of GachaRecordDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ts = null,Object? pool = null,Object? chars = null,Object? uid = null,}) {
  return _then(_$GachaRecordDtoImpl(
ts: null == ts ? _value.ts : ts // ignore: cast_nullable_to_non_nullable
as int,pool: null == pool ? _value.pool : pool // ignore: cast_nullable_to_non_nullable
as String,chars: null == chars ? _value._chars : chars // ignore: cast_nullable_to_non_nullable
as List<GachaCharDto>,uid: null == uid ? _value.uid : uid // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _$GachaRecordDtoImpl extends _GachaRecordDto  {
  const _$GachaRecordDtoImpl({required this.ts, required this.pool, required final  List<GachaCharDto> chars, @JsonKey(defaultValue: '') required this.uid}): _chars = chars,super._();

  factory _$GachaRecordDtoImpl.fromJson(Map<String, dynamic> json) => _$$GachaRecordDtoImplFromJson(json);

@override final  int ts;
@override final  String pool;
 final  List<GachaCharDto> _chars;
@override List<GachaCharDto> get chars {
  if (_chars is EqualUnmodifiableListView) return _chars;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_chars);
}

@override@JsonKey(defaultValue: '') final  String uid;

@override
String toString() {
  return 'GachaRecordDto(ts: $ts, pool: $pool, chars: $chars, uid: $uid)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$GachaRecordDtoImpl&&(identical(other.ts, ts) || other.ts == ts)&&(identical(other.pool, pool) || other.pool == pool)&&const DeepCollectionEquality().equals(other._chars, _chars)&&(identical(other.uid, uid) || other.uid == uid));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ts,pool,const DeepCollectionEquality().hash(_chars),uid);

/// Create a copy of GachaRecordDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$GachaRecordDtoImplCopyWith<_$GachaRecordDtoImpl> get copyWith => __$$GachaRecordDtoImplCopyWithImpl<_$GachaRecordDtoImpl>(this, _$identity);







@override
Map<String, dynamic> toJson() {
  return _$$GachaRecordDtoImplToJson(this, );
}
}


abstract class _GachaRecordDto extends GachaRecordDto {
  const factory _GachaRecordDto({required final  int ts, required final  String pool, required final  List<GachaCharDto> chars, @JsonKey(defaultValue: '') required final  String uid}) = _$GachaRecordDtoImpl;
  const _GachaRecordDto._(): super._();

  factory _GachaRecordDto.fromJson(Map<String, dynamic> json) = _$GachaRecordDtoImpl.fromJson;

@override int get ts;@override String get pool;@override List<GachaCharDto> get chars;@override@JsonKey(defaultValue: '') String get uid;
/// Create a copy of GachaRecordDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$GachaRecordDtoImplCopyWith<_$GachaRecordDtoImpl> get copyWith => throw _privateConstructorUsedError;

}
