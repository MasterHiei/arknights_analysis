// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gacha_pool.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GachaPool {

 String get id => throw _privateConstructorUsedError; int get index => throw _privateConstructorUsedError; int get openTime => throw _privateConstructorUsedError; int get endTime => throw _privateConstructorUsedError; String get name => throw _privateConstructorUsedError; GachaRuleType get ruleType => throw _privateConstructorUsedError;







@JsonKey(ignore: true)
$GachaPoolCopyWith<GachaPool> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $GachaPoolCopyWith<$Res>  {
  factory $GachaPoolCopyWith(GachaPool value, $Res Function(GachaPool) then) = _$GachaPoolCopyWithImpl<$Res, GachaPool>;
@useResult
$Res call({
 String id, int index, int openTime, int endTime, String name, GachaRuleType ruleType
});



}

/// @nodoc
class _$GachaPoolCopyWithImpl<$Res,$Val extends GachaPool> implements $GachaPoolCopyWith<$Res> {
  _$GachaPoolCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? index = null,Object? openTime = null,Object? endTime = null,Object? name = null,Object? ruleType = null,}) {
  return _then(_value.copyWith(
id: null == id ? _value.id : id // ignore: cast_nullable_to_non_nullable
as String,index: null == index ? _value.index : index // ignore: cast_nullable_to_non_nullable
as int,openTime: null == openTime ? _value.openTime : openTime // ignore: cast_nullable_to_non_nullable
as int,endTime: null == endTime ? _value.endTime : endTime // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _value.name : name // ignore: cast_nullable_to_non_nullable
as String,ruleType: null == ruleType ? _value.ruleType : ruleType // ignore: cast_nullable_to_non_nullable
as GachaRuleType,
  )as $Val);
}

}


/// @nodoc
abstract class _$$GachaPoolImplCopyWith<$Res> implements $GachaPoolCopyWith<$Res> {
  factory _$$GachaPoolImplCopyWith(_$GachaPoolImpl value, $Res Function(_$GachaPoolImpl) then) = __$$GachaPoolImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String id, int index, int openTime, int endTime, String name, GachaRuleType ruleType
});



}

/// @nodoc
class __$$GachaPoolImplCopyWithImpl<$Res> extends _$GachaPoolCopyWithImpl<$Res, _$GachaPoolImpl> implements _$$GachaPoolImplCopyWith<$Res> {
  __$$GachaPoolImplCopyWithImpl(_$GachaPoolImpl _value, $Res Function(_$GachaPoolImpl) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? index = null,Object? openTime = null,Object? endTime = null,Object? name = null,Object? ruleType = null,}) {
  return _then(_$GachaPoolImpl(
id: null == id ? _value.id : id // ignore: cast_nullable_to_non_nullable
as String,index: null == index ? _value.index : index // ignore: cast_nullable_to_non_nullable
as int,openTime: null == openTime ? _value.openTime : openTime // ignore: cast_nullable_to_non_nullable
as int,endTime: null == endTime ? _value.endTime : endTime // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _value.name : name // ignore: cast_nullable_to_non_nullable
as String,ruleType: null == ruleType ? _value.ruleType : ruleType // ignore: cast_nullable_to_non_nullable
as GachaRuleType,
  ));
}


}

/// @nodoc


class _$GachaPoolImpl  implements _GachaPool {
  const _$GachaPoolImpl({required this.id, required this.index, required this.openTime, required this.endTime, required this.name, required this.ruleType});

  

@override final  String id;
@override final  int index;
@override final  int openTime;
@override final  int endTime;
@override final  String name;
@override final  GachaRuleType ruleType;

@override
String toString() {
  return 'GachaPool(id: $id, index: $index, openTime: $openTime, endTime: $endTime, name: $name, ruleType: $ruleType)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$GachaPoolImpl&&(identical(other.id, id) || other.id == id)&&(identical(other.index, index) || other.index == index)&&(identical(other.openTime, openTime) || other.openTime == openTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.name, name) || other.name == name)&&(identical(other.ruleType, ruleType) || other.ruleType == ruleType));
}


@override
int get hashCode => Object.hash(runtimeType,id,index,openTime,endTime,name,ruleType);

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$GachaPoolImplCopyWith<_$GachaPoolImpl> get copyWith => __$$GachaPoolImplCopyWithImpl<_$GachaPoolImpl>(this, _$identity);








}


abstract class _GachaPool implements GachaPool {
  const factory _GachaPool({required final  String id, required final  int index, required final  int openTime, required final  int endTime, required final  String name, required final  GachaRuleType ruleType}) = _$GachaPoolImpl;
  

  

@override  String get id;@override  int get index;@override  int get openTime;@override  int get endTime;@override  String get name;@override  GachaRuleType get ruleType;
@override @JsonKey(ignore: true)
_$$GachaPoolImplCopyWith<_$GachaPoolImpl> get copyWith => throw _privateConstructorUsedError;

}
