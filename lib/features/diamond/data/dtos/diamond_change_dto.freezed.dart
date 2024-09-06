// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diamond_change_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DiamondChangeDto _$DiamondChangeDtoFromJson(Map<String, dynamic> json) {
return _DiamondChangeDto.fromJson(json);
}

/// @nodoc
mixin _$DiamondChangeDto {

 String get type => throw _privateConstructorUsedError; int get before => throw _privateConstructorUsedError; int get after => throw _privateConstructorUsedError;






/// Serializes this DiamondChangeDto to a JSON map.
Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
/// Create a copy of DiamondChangeDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$DiamondChangeDtoCopyWith<DiamondChangeDto> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $DiamondChangeDtoCopyWith<$Res>  {
  factory $DiamondChangeDtoCopyWith(DiamondChangeDto value, $Res Function(DiamondChangeDto) then) = _$DiamondChangeDtoCopyWithImpl<$Res, DiamondChangeDto>;
@useResult
$Res call({
 String type, int before, int after
});



}

/// @nodoc
class _$DiamondChangeDtoCopyWithImpl<$Res,$Val extends DiamondChangeDto> implements $DiamondChangeDtoCopyWith<$Res> {
  _$DiamondChangeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of DiamondChangeDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? before = null,Object? after = null,}) {
  return _then(_value.copyWith(
type: null == type ? _value.type : type // ignore: cast_nullable_to_non_nullable
as String,before: null == before ? _value.before : before // ignore: cast_nullable_to_non_nullable
as int,after: null == after ? _value.after : after // ignore: cast_nullable_to_non_nullable
as int,
  )as $Val);
}

}


/// @nodoc
abstract class _$$DiamondChangeDtoImplCopyWith<$Res> implements $DiamondChangeDtoCopyWith<$Res> {
  factory _$$DiamondChangeDtoImplCopyWith(_$DiamondChangeDtoImpl value, $Res Function(_$DiamondChangeDtoImpl) then) = __$$DiamondChangeDtoImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String type, int before, int after
});



}

/// @nodoc
class __$$DiamondChangeDtoImplCopyWithImpl<$Res> extends _$DiamondChangeDtoCopyWithImpl<$Res, _$DiamondChangeDtoImpl> implements _$$DiamondChangeDtoImplCopyWith<$Res> {
  __$$DiamondChangeDtoImplCopyWithImpl(_$DiamondChangeDtoImpl _value, $Res Function(_$DiamondChangeDtoImpl) _then)
      : super(_value, _then);


/// Create a copy of DiamondChangeDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? before = null,Object? after = null,}) {
  return _then(_$DiamondChangeDtoImpl(
type: null == type ? _value.type : type // ignore: cast_nullable_to_non_nullable
as String,before: null == before ? _value.before : before // ignore: cast_nullable_to_non_nullable
as int,after: null == after ? _value.after : after // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _$DiamondChangeDtoImpl extends _DiamondChangeDto  {
  const _$DiamondChangeDtoImpl({required this.type, required this.before, required this.after}): super._();

  factory _$DiamondChangeDtoImpl.fromJson(Map<String, dynamic> json) => _$$DiamondChangeDtoImplFromJson(json);

@override final  String type;
@override final  int before;
@override final  int after;

@override
String toString() {
  return 'DiamondChangeDto(type: $type, before: $before, after: $after)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$DiamondChangeDtoImpl&&(identical(other.type, type) || other.type == type)&&(identical(other.before, before) || other.before == before)&&(identical(other.after, after) || other.after == after));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,before,after);

/// Create a copy of DiamondChangeDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$DiamondChangeDtoImplCopyWith<_$DiamondChangeDtoImpl> get copyWith => __$$DiamondChangeDtoImplCopyWithImpl<_$DiamondChangeDtoImpl>(this, _$identity);







@override
Map<String, dynamic> toJson() {
  return _$$DiamondChangeDtoImplToJson(this, );
}
}


abstract class _DiamondChangeDto extends DiamondChangeDto {
  const factory _DiamondChangeDto({required final  String type, required final  int before, required final  int after}) = _$DiamondChangeDtoImpl;
  const _DiamondChangeDto._(): super._();

  factory _DiamondChangeDto.fromJson(Map<String, dynamic> json) = _$DiamondChangeDtoImpl.fromJson;

@override String get type;@override int get before;@override int get after;
/// Create a copy of DiamondChangeDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$DiamondChangeDtoImplCopyWith<_$DiamondChangeDtoImpl> get copyWith => throw _privateConstructorUsedError;

}
