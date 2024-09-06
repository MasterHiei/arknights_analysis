// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gacha_char_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GachaCharDto _$GachaCharDtoFromJson(Map<String, dynamic> json) {
return _GachaCharDto.fromJson(json);
}

/// @nodoc
mixin _$GachaCharDto {

 String get name => throw _privateConstructorUsedError; Rarity get rarity => throw _privateConstructorUsedError; bool get isNew => throw _privateConstructorUsedError;






/// Serializes this GachaCharDto to a JSON map.
Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
/// Create a copy of GachaCharDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$GachaCharDtoCopyWith<GachaCharDto> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $GachaCharDtoCopyWith<$Res>  {
  factory $GachaCharDtoCopyWith(GachaCharDto value, $Res Function(GachaCharDto) then) = _$GachaCharDtoCopyWithImpl<$Res, GachaCharDto>;
@useResult
$Res call({
 String name, Rarity rarity, bool isNew
});



}

/// @nodoc
class _$GachaCharDtoCopyWithImpl<$Res,$Val extends GachaCharDto> implements $GachaCharDtoCopyWith<$Res> {
  _$GachaCharDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of GachaCharDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? rarity = null,Object? isNew = null,}) {
  return _then(_value.copyWith(
name: null == name ? _value.name : name // ignore: cast_nullable_to_non_nullable
as String,rarity: null == rarity ? _value.rarity : rarity // ignore: cast_nullable_to_non_nullable
as Rarity,isNew: null == isNew ? _value.isNew : isNew // ignore: cast_nullable_to_non_nullable
as bool,
  )as $Val);
}

}


/// @nodoc
abstract class _$$GachaCharDtoImplCopyWith<$Res> implements $GachaCharDtoCopyWith<$Res> {
  factory _$$GachaCharDtoImplCopyWith(_$GachaCharDtoImpl value, $Res Function(_$GachaCharDtoImpl) then) = __$$GachaCharDtoImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String name, Rarity rarity, bool isNew
});



}

/// @nodoc
class __$$GachaCharDtoImplCopyWithImpl<$Res> extends _$GachaCharDtoCopyWithImpl<$Res, _$GachaCharDtoImpl> implements _$$GachaCharDtoImplCopyWith<$Res> {
  __$$GachaCharDtoImplCopyWithImpl(_$GachaCharDtoImpl _value, $Res Function(_$GachaCharDtoImpl) _then)
      : super(_value, _then);


/// Create a copy of GachaCharDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? rarity = null,Object? isNew = null,}) {
  return _then(_$GachaCharDtoImpl(
name: null == name ? _value.name : name // ignore: cast_nullable_to_non_nullable
as String,rarity: null == rarity ? _value.rarity : rarity // ignore: cast_nullable_to_non_nullable
as Rarity,isNew: null == isNew ? _value.isNew : isNew // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _$GachaCharDtoImpl extends _GachaCharDto  {
  const _$GachaCharDtoImpl({required this.name, required this.rarity, required this.isNew}): super._();

  factory _$GachaCharDtoImpl.fromJson(Map<String, dynamic> json) => _$$GachaCharDtoImplFromJson(json);

@override final  String name;
@override final  Rarity rarity;
@override final  bool isNew;

@override
String toString() {
  return 'GachaCharDto(name: $name, rarity: $rarity, isNew: $isNew)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$GachaCharDtoImpl&&(identical(other.name, name) || other.name == name)&&(identical(other.rarity, rarity) || other.rarity == rarity)&&(identical(other.isNew, isNew) || other.isNew == isNew));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,rarity,isNew);

/// Create a copy of GachaCharDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$GachaCharDtoImplCopyWith<_$GachaCharDtoImpl> get copyWith => __$$GachaCharDtoImplCopyWithImpl<_$GachaCharDtoImpl>(this, _$identity);







@override
Map<String, dynamic> toJson() {
  return _$$GachaCharDtoImplToJson(this, );
}
}


abstract class _GachaCharDto extends GachaCharDto {
  const factory _GachaCharDto({required final  String name, required final  Rarity rarity, required final  bool isNew}) = _$GachaCharDtoImpl;
  const _GachaCharDto._(): super._();

  factory _GachaCharDto.fromJson(Map<String, dynamic> json) = _$GachaCharDtoImpl.fromJson;

@override String get name;@override Rarity get rarity;@override bool get isNew;
/// Create a copy of GachaCharDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$GachaCharDtoImplCopyWith<_$GachaCharDtoImpl> get copyWith => throw _privateConstructorUsedError;

}
