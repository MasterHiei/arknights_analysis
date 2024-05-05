// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diamond_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DiamondRecord {

 Ts get ts => throw _privateConstructorUsedError; String get operation => throw _privateConstructorUsedError; List<DiamondChange> get changes => throw _privateConstructorUsedError; Uid get uid => throw _privateConstructorUsedError;







@JsonKey(ignore: true)
$DiamondRecordCopyWith<DiamondRecord> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $DiamondRecordCopyWith<$Res>  {
  factory $DiamondRecordCopyWith(DiamondRecord value, $Res Function(DiamondRecord) then) = _$DiamondRecordCopyWithImpl<$Res, DiamondRecord>;
@useResult
$Res call({
 Ts ts, String operation, List<DiamondChange> changes, Uid uid
});



}

/// @nodoc
class _$DiamondRecordCopyWithImpl<$Res,$Val extends DiamondRecord> implements $DiamondRecordCopyWith<$Res> {
  _$DiamondRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

@pragma('vm:prefer-inline') @override $Res call({Object? ts = null,Object? operation = null,Object? changes = null,Object? uid = null,}) {
  return _then(_value.copyWith(
ts: null == ts ? _value.ts : ts // ignore: cast_nullable_to_non_nullable
as Ts,operation: null == operation ? _value.operation : operation // ignore: cast_nullable_to_non_nullable
as String,changes: null == changes ? _value.changes : changes // ignore: cast_nullable_to_non_nullable
as List<DiamondChange>,uid: null == uid ? _value.uid : uid // ignore: cast_nullable_to_non_nullable
as Uid,
  )as $Val);
}

}


/// @nodoc
abstract class _$$DiamondRecordImplCopyWith<$Res> implements $DiamondRecordCopyWith<$Res> {
  factory _$$DiamondRecordImplCopyWith(_$DiamondRecordImpl value, $Res Function(_$DiamondRecordImpl) then) = __$$DiamondRecordImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 Ts ts, String operation, List<DiamondChange> changes, Uid uid
});



}

/// @nodoc
class __$$DiamondRecordImplCopyWithImpl<$Res> extends _$DiamondRecordCopyWithImpl<$Res, _$DiamondRecordImpl> implements _$$DiamondRecordImplCopyWith<$Res> {
  __$$DiamondRecordImplCopyWithImpl(_$DiamondRecordImpl _value, $Res Function(_$DiamondRecordImpl) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? ts = null,Object? operation = null,Object? changes = null,Object? uid = null,}) {
  return _then(_$DiamondRecordImpl(
ts: null == ts ? _value.ts : ts // ignore: cast_nullable_to_non_nullable
as Ts,operation: null == operation ? _value.operation : operation // ignore: cast_nullable_to_non_nullable
as String,changes: null == changes ? _value._changes : changes // ignore: cast_nullable_to_non_nullable
as List<DiamondChange>,uid: null == uid ? _value.uid : uid // ignore: cast_nullable_to_non_nullable
as Uid,
  ));
}


}

/// @nodoc


class _$DiamondRecordImpl  implements _DiamondRecord {
  const _$DiamondRecordImpl({required this.ts, required this.operation, required final  List<DiamondChange> changes, required this.uid}): _changes = changes;

  

@override final  Ts ts;
@override final  String operation;
 final  List<DiamondChange> _changes;
@override List<DiamondChange> get changes {
  if (_changes is EqualUnmodifiableListView) return _changes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_changes);
}

@override final  Uid uid;

@override
String toString() {
  return 'DiamondRecord(ts: $ts, operation: $operation, changes: $changes, uid: $uid)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$DiamondRecordImpl&&(identical(other.ts, ts) || other.ts == ts)&&(identical(other.operation, operation) || other.operation == operation)&&const DeepCollectionEquality().equals(other._changes, _changes)&&(identical(other.uid, uid) || other.uid == uid));
}


@override
int get hashCode => Object.hash(runtimeType,ts,operation,const DeepCollectionEquality().hash(_changes),uid);

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$DiamondRecordImplCopyWith<_$DiamondRecordImpl> get copyWith => __$$DiamondRecordImplCopyWithImpl<_$DiamondRecordImpl>(this, _$identity);








}


abstract class _DiamondRecord implements DiamondRecord {
  const factory _DiamondRecord({required final  Ts ts, required final  String operation, required final  List<DiamondChange> changes, required final  Uid uid}) = _$DiamondRecordImpl;
  

  

@override  Ts get ts;@override  String get operation;@override  List<DiamondChange> get changes;@override  Uid get uid;
@override @JsonKey(ignore: true)
_$$DiamondRecordImplCopyWith<_$DiamondRecordImpl> get copyWith => throw _privateConstructorUsedError;

}
