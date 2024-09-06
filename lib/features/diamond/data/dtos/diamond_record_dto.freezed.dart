// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diamond_record_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DiamondRecordDto _$DiamondRecordDtoFromJson(Map<String, dynamic> json) {
return _DiamondRecordDto.fromJson(json);
}

/// @nodoc
mixin _$DiamondRecordDto {

 int get ts => throw _privateConstructorUsedError; String get operation => throw _privateConstructorUsedError; List<DiamondChangeDto> get changes => throw _privateConstructorUsedError;@JsonKey(defaultValue: '') String get uid => throw _privateConstructorUsedError;






/// Serializes this DiamondRecordDto to a JSON map.
Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
/// Create a copy of DiamondRecordDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$DiamondRecordDtoCopyWith<DiamondRecordDto> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $DiamondRecordDtoCopyWith<$Res>  {
  factory $DiamondRecordDtoCopyWith(DiamondRecordDto value, $Res Function(DiamondRecordDto) then) = _$DiamondRecordDtoCopyWithImpl<$Res, DiamondRecordDto>;
@useResult
$Res call({
 int ts, String operation, List<DiamondChangeDto> changes,@JsonKey(defaultValue: '') String uid
});



}

/// @nodoc
class _$DiamondRecordDtoCopyWithImpl<$Res,$Val extends DiamondRecordDto> implements $DiamondRecordDtoCopyWith<$Res> {
  _$DiamondRecordDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of DiamondRecordDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ts = null,Object? operation = null,Object? changes = null,Object? uid = null,}) {
  return _then(_value.copyWith(
ts: null == ts ? _value.ts : ts // ignore: cast_nullable_to_non_nullable
as int,operation: null == operation ? _value.operation : operation // ignore: cast_nullable_to_non_nullable
as String,changes: null == changes ? _value.changes : changes // ignore: cast_nullable_to_non_nullable
as List<DiamondChangeDto>,uid: null == uid ? _value.uid : uid // ignore: cast_nullable_to_non_nullable
as String,
  )as $Val);
}

}


/// @nodoc
abstract class _$$DiamondRecordDtoImplCopyWith<$Res> implements $DiamondRecordDtoCopyWith<$Res> {
  factory _$$DiamondRecordDtoImplCopyWith(_$DiamondRecordDtoImpl value, $Res Function(_$DiamondRecordDtoImpl) then) = __$$DiamondRecordDtoImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 int ts, String operation, List<DiamondChangeDto> changes,@JsonKey(defaultValue: '') String uid
});



}

/// @nodoc
class __$$DiamondRecordDtoImplCopyWithImpl<$Res> extends _$DiamondRecordDtoCopyWithImpl<$Res, _$DiamondRecordDtoImpl> implements _$$DiamondRecordDtoImplCopyWith<$Res> {
  __$$DiamondRecordDtoImplCopyWithImpl(_$DiamondRecordDtoImpl _value, $Res Function(_$DiamondRecordDtoImpl) _then)
      : super(_value, _then);


/// Create a copy of DiamondRecordDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ts = null,Object? operation = null,Object? changes = null,Object? uid = null,}) {
  return _then(_$DiamondRecordDtoImpl(
ts: null == ts ? _value.ts : ts // ignore: cast_nullable_to_non_nullable
as int,operation: null == operation ? _value.operation : operation // ignore: cast_nullable_to_non_nullable
as String,changes: null == changes ? _value._changes : changes // ignore: cast_nullable_to_non_nullable
as List<DiamondChangeDto>,uid: null == uid ? _value.uid : uid // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _$DiamondRecordDtoImpl extends _DiamondRecordDto  {
  const _$DiamondRecordDtoImpl({required this.ts, required this.operation, required final  List<DiamondChangeDto> changes, @JsonKey(defaultValue: '') required this.uid}): _changes = changes,super._();

  factory _$DiamondRecordDtoImpl.fromJson(Map<String, dynamic> json) => _$$DiamondRecordDtoImplFromJson(json);

@override final  int ts;
@override final  String operation;
 final  List<DiamondChangeDto> _changes;
@override List<DiamondChangeDto> get changes {
  if (_changes is EqualUnmodifiableListView) return _changes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_changes);
}

@override@JsonKey(defaultValue: '') final  String uid;

@override
String toString() {
  return 'DiamondRecordDto(ts: $ts, operation: $operation, changes: $changes, uid: $uid)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$DiamondRecordDtoImpl&&(identical(other.ts, ts) || other.ts == ts)&&(identical(other.operation, operation) || other.operation == operation)&&const DeepCollectionEquality().equals(other._changes, _changes)&&(identical(other.uid, uid) || other.uid == uid));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ts,operation,const DeepCollectionEquality().hash(_changes),uid);

/// Create a copy of DiamondRecordDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$DiamondRecordDtoImplCopyWith<_$DiamondRecordDtoImpl> get copyWith => __$$DiamondRecordDtoImplCopyWithImpl<_$DiamondRecordDtoImpl>(this, _$identity);







@override
Map<String, dynamic> toJson() {
  return _$$DiamondRecordDtoImplToJson(this, );
}
}


abstract class _DiamondRecordDto extends DiamondRecordDto {
  const factory _DiamondRecordDto({required final  int ts, required final  String operation, required final  List<DiamondChangeDto> changes, @JsonKey(defaultValue: '') required final  String uid}) = _$DiamondRecordDtoImpl;
  const _DiamondRecordDto._(): super._();

  factory _DiamondRecordDto.fromJson(Map<String, dynamic> json) = _$DiamondRecordDtoImpl.fromJson;

@override int get ts;@override String get operation;@override List<DiamondChangeDto> get changes;@override@JsonKey(defaultValue: '') String get uid;
/// Create a copy of DiamondRecordDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$DiamondRecordDtoImplCopyWith<_$DiamondRecordDtoImpl> get copyWith => throw _privateConstructorUsedError;

}
