// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diamond_change.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DiamondChange {

 String get operation => throw _privateConstructorUsedError; String get type => throw _privateConstructorUsedError; int get before => throw _privateConstructorUsedError; int get after => throw _privateConstructorUsedError; Ts get ts => throw _privateConstructorUsedError;







@JsonKey(ignore: true)
$DiamondChangeCopyWith<DiamondChange> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $DiamondChangeCopyWith<$Res>  {
  factory $DiamondChangeCopyWith(DiamondChange value, $Res Function(DiamondChange) then) = _$DiamondChangeCopyWithImpl<$Res, DiamondChange>;
@useResult
$Res call({
 String operation, String type, int before, int after, Ts ts
});



}

/// @nodoc
class _$DiamondChangeCopyWithImpl<$Res,$Val extends DiamondChange> implements $DiamondChangeCopyWith<$Res> {
  _$DiamondChangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

@pragma('vm:prefer-inline') @override $Res call({Object? operation = null,Object? type = null,Object? before = null,Object? after = null,Object? ts = null,}) {
  return _then(_value.copyWith(
operation: null == operation ? _value.operation : operation // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _value.type : type // ignore: cast_nullable_to_non_nullable
as String,before: null == before ? _value.before : before // ignore: cast_nullable_to_non_nullable
as int,after: null == after ? _value.after : after // ignore: cast_nullable_to_non_nullable
as int,ts: null == ts ? _value.ts : ts // ignore: cast_nullable_to_non_nullable
as Ts,
  )as $Val);
}

}


/// @nodoc
abstract class _$$DiamondChangeImplCopyWith<$Res> implements $DiamondChangeCopyWith<$Res> {
  factory _$$DiamondChangeImplCopyWith(_$DiamondChangeImpl value, $Res Function(_$DiamondChangeImpl) then) = __$$DiamondChangeImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String operation, String type, int before, int after, Ts ts
});



}

/// @nodoc
class __$$DiamondChangeImplCopyWithImpl<$Res> extends _$DiamondChangeCopyWithImpl<$Res, _$DiamondChangeImpl> implements _$$DiamondChangeImplCopyWith<$Res> {
  __$$DiamondChangeImplCopyWithImpl(_$DiamondChangeImpl _value, $Res Function(_$DiamondChangeImpl) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? operation = null,Object? type = null,Object? before = null,Object? after = null,Object? ts = null,}) {
  return _then(_$DiamondChangeImpl(
operation: null == operation ? _value.operation : operation // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _value.type : type // ignore: cast_nullable_to_non_nullable
as String,before: null == before ? _value.before : before // ignore: cast_nullable_to_non_nullable
as int,after: null == after ? _value.after : after // ignore: cast_nullable_to_non_nullable
as int,ts: null == ts ? _value.ts : ts // ignore: cast_nullable_to_non_nullable
as Ts,
  ));
}


}

/// @nodoc


class _$DiamondChangeImpl extends _DiamondChange  {
  const _$DiamondChangeImpl({required this.operation, required this.type, required this.before, required this.after, required this.ts}): super._();

  

@override final  String operation;
@override final  String type;
@override final  int before;
@override final  int after;
@override final  Ts ts;

@override
String toString() {
  return 'DiamondChange(operation: $operation, type: $type, before: $before, after: $after, ts: $ts)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$DiamondChangeImpl&&(identical(other.operation, operation) || other.operation == operation)&&(identical(other.type, type) || other.type == type)&&(identical(other.before, before) || other.before == before)&&(identical(other.after, after) || other.after == after)&&(identical(other.ts, ts) || other.ts == ts));
}


@override
int get hashCode => Object.hash(runtimeType,operation,type,before,after,ts);

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$DiamondChangeImplCopyWith<_$DiamondChangeImpl> get copyWith => __$$DiamondChangeImplCopyWithImpl<_$DiamondChangeImpl>(this, _$identity);








}


abstract class _DiamondChange extends DiamondChange {
  const factory _DiamondChange({required final  String operation, required final  String type, required final  int before, required final  int after, required final  Ts ts}) = _$DiamondChangeImpl;
  const _DiamondChange._(): super._();

  

@override  String get operation;@override  String get type;@override  int get before;@override  int get after;@override  Ts get ts;
@override @JsonKey(ignore: true)
_$$DiamondChangeImplCopyWith<_$DiamondChangeImpl> get copyWith => throw _privateConstructorUsedError;

}
