// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'persistence_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PersistenceDto _$PersistenceDtoFromJson(Map<String, dynamic> json) {
return _PersistenceDto.fromJson(json);
}

/// @nodoc
mixin _$PersistenceDto {

 GachaDto get gacha => throw _privateConstructorUsedError; DiamondDto get diamond => throw _privateConstructorUsedError;






Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
@JsonKey(ignore: true)
$PersistenceDtoCopyWith<PersistenceDto> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $PersistenceDtoCopyWith<$Res>  {
  factory $PersistenceDtoCopyWith(PersistenceDto value, $Res Function(PersistenceDto) then) = _$PersistenceDtoCopyWithImpl<$Res, PersistenceDto>;
@useResult
$Res call({
 GachaDto gacha, DiamondDto diamond
});


$GachaDtoCopyWith<$Res> get gacha;$DiamondDtoCopyWith<$Res> get diamond;
}

/// @nodoc
class _$PersistenceDtoCopyWithImpl<$Res,$Val extends PersistenceDto> implements $PersistenceDtoCopyWith<$Res> {
  _$PersistenceDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

@pragma('vm:prefer-inline') @override $Res call({Object? gacha = null,Object? diamond = null,}) {
  return _then(_value.copyWith(
gacha: null == gacha ? _value.gacha : gacha // ignore: cast_nullable_to_non_nullable
as GachaDto,diamond: null == diamond ? _value.diamond : diamond // ignore: cast_nullable_to_non_nullable
as DiamondDto,
  )as $Val);
}
@override
@pragma('vm:prefer-inline')
$GachaDtoCopyWith<$Res> get gacha {
  
  return $GachaDtoCopyWith<$Res>(_value.gacha, (value) {
    return _then(_value.copyWith(gacha: value) as $Val);
  });
}@override
@pragma('vm:prefer-inline')
$DiamondDtoCopyWith<$Res> get diamond {
  
  return $DiamondDtoCopyWith<$Res>(_value.diamond, (value) {
    return _then(_value.copyWith(diamond: value) as $Val);
  });
}
}


/// @nodoc
abstract class _$$PersistenceDtoImplCopyWith<$Res> implements $PersistenceDtoCopyWith<$Res> {
  factory _$$PersistenceDtoImplCopyWith(_$PersistenceDtoImpl value, $Res Function(_$PersistenceDtoImpl) then) = __$$PersistenceDtoImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 GachaDto gacha, DiamondDto diamond
});


@override $GachaDtoCopyWith<$Res> get gacha;@override $DiamondDtoCopyWith<$Res> get diamond;
}

/// @nodoc
class __$$PersistenceDtoImplCopyWithImpl<$Res> extends _$PersistenceDtoCopyWithImpl<$Res, _$PersistenceDtoImpl> implements _$$PersistenceDtoImplCopyWith<$Res> {
  __$$PersistenceDtoImplCopyWithImpl(_$PersistenceDtoImpl _value, $Res Function(_$PersistenceDtoImpl) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? gacha = null,Object? diamond = null,}) {
  return _then(_$PersistenceDtoImpl(
gacha: null == gacha ? _value.gacha : gacha // ignore: cast_nullable_to_non_nullable
as GachaDto,diamond: null == diamond ? _value.diamond : diamond // ignore: cast_nullable_to_non_nullable
as DiamondDto,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _$PersistenceDtoImpl  implements _PersistenceDto {
  const _$PersistenceDtoImpl({required this.gacha, required this.diamond});

  factory _$PersistenceDtoImpl.fromJson(Map<String, dynamic> json) => _$$PersistenceDtoImplFromJson(json);

@override final  GachaDto gacha;
@override final  DiamondDto diamond;

@override
String toString() {
  return 'PersistenceDto(gacha: $gacha, diamond: $diamond)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$PersistenceDtoImpl&&(identical(other.gacha, gacha) || other.gacha == gacha)&&(identical(other.diamond, diamond) || other.diamond == diamond));
}

@JsonKey(ignore: true)
@override
int get hashCode => Object.hash(runtimeType,gacha,diamond);

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$PersistenceDtoImplCopyWith<_$PersistenceDtoImpl> get copyWith => __$$PersistenceDtoImplCopyWithImpl<_$PersistenceDtoImpl>(this, _$identity);







@override
Map<String, dynamic> toJson() {
  return _$$PersistenceDtoImplToJson(this, );
}
}


abstract class _PersistenceDto implements PersistenceDto {
  const factory _PersistenceDto({required final  GachaDto gacha, required final  DiamondDto diamond}) = _$PersistenceDtoImpl;
  

  factory _PersistenceDto.fromJson(Map<String, dynamic> json) = _$PersistenceDtoImpl.fromJson;

@override  GachaDto get gacha;@override  DiamondDto get diamond;
@override @JsonKey(ignore: true)
_$$PersistenceDtoImplCopyWith<_$PersistenceDtoImpl> get copyWith => throw _privateConstructorUsedError;

}
