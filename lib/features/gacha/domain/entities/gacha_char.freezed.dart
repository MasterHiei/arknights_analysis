// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gacha_char.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GachaChar {

 String get name => throw _privateConstructorUsedError; Rarity get rarity => throw _privateConstructorUsedError; bool get isNew => throw _privateConstructorUsedError; String get pool => throw _privateConstructorUsedError; Ts get ts => throw _privateConstructorUsedError;







@JsonKey(ignore: true)
$GachaCharCopyWith<GachaChar> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $GachaCharCopyWith<$Res>  {
  factory $GachaCharCopyWith(GachaChar value, $Res Function(GachaChar) then) = _$GachaCharCopyWithImpl<$Res, GachaChar>;
@useResult
$Res call({
 String name, Rarity rarity, bool isNew, String pool, Ts ts
});



}

/// @nodoc
class _$GachaCharCopyWithImpl<$Res,$Val extends GachaChar> implements $GachaCharCopyWith<$Res> {
  _$GachaCharCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? rarity = null,Object? isNew = null,Object? pool = null,Object? ts = null,}) {
  return _then(_value.copyWith(
name: null == name ? _value.name : name // ignore: cast_nullable_to_non_nullable
as String,rarity: null == rarity ? _value.rarity : rarity // ignore: cast_nullable_to_non_nullable
as Rarity,isNew: null == isNew ? _value.isNew : isNew // ignore: cast_nullable_to_non_nullable
as bool,pool: null == pool ? _value.pool : pool // ignore: cast_nullable_to_non_nullable
as String,ts: null == ts ? _value.ts : ts // ignore: cast_nullable_to_non_nullable
as Ts,
  )as $Val);
}

}


/// @nodoc
abstract class _$$GachaCharImplCopyWith<$Res> implements $GachaCharCopyWith<$Res> {
  factory _$$GachaCharImplCopyWith(_$GachaCharImpl value, $Res Function(_$GachaCharImpl) then) = __$$GachaCharImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String name, Rarity rarity, bool isNew, String pool, Ts ts
});



}

/// @nodoc
class __$$GachaCharImplCopyWithImpl<$Res> extends _$GachaCharCopyWithImpl<$Res, _$GachaCharImpl> implements _$$GachaCharImplCopyWith<$Res> {
  __$$GachaCharImplCopyWithImpl(_$GachaCharImpl _value, $Res Function(_$GachaCharImpl) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? rarity = null,Object? isNew = null,Object? pool = null,Object? ts = null,}) {
  return _then(_$GachaCharImpl(
name: null == name ? _value.name : name // ignore: cast_nullable_to_non_nullable
as String,rarity: null == rarity ? _value.rarity : rarity // ignore: cast_nullable_to_non_nullable
as Rarity,isNew: null == isNew ? _value.isNew : isNew // ignore: cast_nullable_to_non_nullable
as bool,pool: null == pool ? _value.pool : pool // ignore: cast_nullable_to_non_nullable
as String,ts: null == ts ? _value.ts : ts // ignore: cast_nullable_to_non_nullable
as Ts,
  ));
}


}

/// @nodoc


class _$GachaCharImpl extends _GachaChar  {
  const _$GachaCharImpl({required this.name, required this.rarity, required this.isNew, required this.pool, required this.ts}): super._();

  

@override final  String name;
@override final  Rarity rarity;
@override final  bool isNew;
@override final  String pool;
@override final  Ts ts;

@override
String toString() {
  return 'GachaChar(name: $name, rarity: $rarity, isNew: $isNew, pool: $pool, ts: $ts)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$GachaCharImpl&&(identical(other.name, name) || other.name == name)&&(identical(other.rarity, rarity) || other.rarity == rarity)&&(identical(other.isNew, isNew) || other.isNew == isNew)&&(identical(other.pool, pool) || other.pool == pool)&&(identical(other.ts, ts) || other.ts == ts));
}


@override
int get hashCode => Object.hash(runtimeType,name,rarity,isNew,pool,ts);

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$GachaCharImplCopyWith<_$GachaCharImpl> get copyWith => __$$GachaCharImplCopyWithImpl<_$GachaCharImpl>(this, _$identity);








}


abstract class _GachaChar extends GachaChar {
  const factory _GachaChar({required final  String name, required final  Rarity rarity, required final  bool isNew, required final  String pool, required final  Ts ts}) = _$GachaCharImpl;
  const _GachaChar._(): super._();

  

@override  String get name;@override  Rarity get rarity;@override  bool get isNew;@override  String get pool;@override  Ts get ts;
@override @JsonKey(ignore: true)
_$$GachaCharImplCopyWith<_$GachaCharImpl> get copyWith => throw _privateConstructorUsedError;

}
