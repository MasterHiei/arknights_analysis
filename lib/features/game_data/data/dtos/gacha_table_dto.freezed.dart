// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gacha_table_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GachaTableDto _$GachaTableDtoFromJson(Map<String, dynamic> json) {
return _GachaTableDto.fromJson(json);
}

/// @nodoc
mixin _$GachaTableDto {

 List<GachaPoolDto> get gachaPoolClient => throw _privateConstructorUsedError;






Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
@JsonKey(ignore: true)
$GachaTableDtoCopyWith<GachaTableDto> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $GachaTableDtoCopyWith<$Res>  {
  factory $GachaTableDtoCopyWith(GachaTableDto value, $Res Function(GachaTableDto) then) = _$GachaTableDtoCopyWithImpl<$Res, GachaTableDto>;
@useResult
$Res call({
 List<GachaPoolDto> gachaPoolClient
});



}

/// @nodoc
class _$GachaTableDtoCopyWithImpl<$Res,$Val extends GachaTableDto> implements $GachaTableDtoCopyWith<$Res> {
  _$GachaTableDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

@pragma('vm:prefer-inline') @override $Res call({Object? gachaPoolClient = null,}) {
  return _then(_value.copyWith(
gachaPoolClient: null == gachaPoolClient ? _value.gachaPoolClient : gachaPoolClient // ignore: cast_nullable_to_non_nullable
as List<GachaPoolDto>,
  )as $Val);
}

}


/// @nodoc
abstract class _$$GachaTableDtoImplCopyWith<$Res> implements $GachaTableDtoCopyWith<$Res> {
  factory _$$GachaTableDtoImplCopyWith(_$GachaTableDtoImpl value, $Res Function(_$GachaTableDtoImpl) then) = __$$GachaTableDtoImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<GachaPoolDto> gachaPoolClient
});



}

/// @nodoc
class __$$GachaTableDtoImplCopyWithImpl<$Res> extends _$GachaTableDtoCopyWithImpl<$Res, _$GachaTableDtoImpl> implements _$$GachaTableDtoImplCopyWith<$Res> {
  __$$GachaTableDtoImplCopyWithImpl(_$GachaTableDtoImpl _value, $Res Function(_$GachaTableDtoImpl) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? gachaPoolClient = null,}) {
  return _then(_$GachaTableDtoImpl(
gachaPoolClient: null == gachaPoolClient ? _value._gachaPoolClient : gachaPoolClient // ignore: cast_nullable_to_non_nullable
as List<GachaPoolDto>,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _$GachaTableDtoImpl  implements _GachaTableDto {
  const _$GachaTableDtoImpl({required final  List<GachaPoolDto> gachaPoolClient}): _gachaPoolClient = gachaPoolClient;

  factory _$GachaTableDtoImpl.fromJson(Map<String, dynamic> json) => _$$GachaTableDtoImplFromJson(json);

 final  List<GachaPoolDto> _gachaPoolClient;
@override List<GachaPoolDto> get gachaPoolClient {
  if (_gachaPoolClient is EqualUnmodifiableListView) return _gachaPoolClient;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_gachaPoolClient);
}


@override
String toString() {
  return 'GachaTableDto(gachaPoolClient: $gachaPoolClient)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$GachaTableDtoImpl&&const DeepCollectionEquality().equals(other._gachaPoolClient, _gachaPoolClient));
}

@JsonKey(ignore: true)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_gachaPoolClient));

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$GachaTableDtoImplCopyWith<_$GachaTableDtoImpl> get copyWith => __$$GachaTableDtoImplCopyWithImpl<_$GachaTableDtoImpl>(this, _$identity);







@override
Map<String, dynamic> toJson() {
  return _$$GachaTableDtoImplToJson(this, );
}
}


abstract class _GachaTableDto implements GachaTableDto {
  const factory _GachaTableDto({required final  List<GachaPoolDto> gachaPoolClient}) = _$GachaTableDtoImpl;
  

  factory _GachaTableDto.fromJson(Map<String, dynamic> json) = _$GachaTableDtoImpl.fromJson;

@override  List<GachaPoolDto> get gachaPoolClient;
@override @JsonKey(ignore: true)
_$$GachaTableDtoImplCopyWith<_$GachaTableDtoImpl> get copyWith => throw _privateConstructorUsedError;

}
