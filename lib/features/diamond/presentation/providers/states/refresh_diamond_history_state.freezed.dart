// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refresh_diamond_history_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RefreshDiamondHistoryState {


@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int current,  int total)  fetching,required TResult Function()  success,required TResult Function( AppFailure failure)  failure,}) => throw _privateConstructorUsedError;
@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int current,  int total)?  fetching,TResult? Function()?  success,TResult? Function( AppFailure failure)?  failure,}) => throw _privateConstructorUsedError;
@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int current,  int total)?  fetching,TResult Function()?  success,TResult Function( AppFailure failure)?  failure,required TResult orElse(),}) => throw _privateConstructorUsedError;
@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Fetching value)  fetching,required TResult Function( _Success value)  success,required TResult Function( _Failure value)  failure,}) => throw _privateConstructorUsedError;
@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Fetching value)?  fetching,TResult? Function( _Success value)?  success,TResult? Function( _Failure value)?  failure,}) => throw _privateConstructorUsedError;
@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Fetching value)?  fetching,TResult Function( _Success value)?  success,TResult Function( _Failure value)?  failure,required TResult orElse(),}) => throw _privateConstructorUsedError;


}

/// @nodoc
abstract class $RefreshDiamondHistoryStateCopyWith<$Res>  {
  factory $RefreshDiamondHistoryStateCopyWith(RefreshDiamondHistoryState value, $Res Function(RefreshDiamondHistoryState) then) = _$RefreshDiamondHistoryStateCopyWithImpl<$Res, RefreshDiamondHistoryState>;



}

/// @nodoc
class _$RefreshDiamondHistoryStateCopyWithImpl<$Res,$Val extends RefreshDiamondHistoryState> implements $RefreshDiamondHistoryStateCopyWith<$Res> {
  _$RefreshDiamondHistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;



}


/// @nodoc
abstract class _$$FetchingImplCopyWith<$Res>  {
  factory _$$FetchingImplCopyWith(_$FetchingImpl value, $Res Function(_$FetchingImpl) then) = __$$FetchingImplCopyWithImpl<$Res>;
@useResult
$Res call({
 int current, int total
});



}

/// @nodoc
class __$$FetchingImplCopyWithImpl<$Res> extends _$RefreshDiamondHistoryStateCopyWithImpl<$Res, _$FetchingImpl> implements _$$FetchingImplCopyWith<$Res> {
  __$$FetchingImplCopyWithImpl(_$FetchingImpl _value, $Res Function(_$FetchingImpl) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? current = null,Object? total = null,}) {
  return _then(_$FetchingImpl(
current: null == current ? _value.current : current // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _value.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _$FetchingImpl  implements _Fetching {
  const _$FetchingImpl({required this.current, required this.total});

  

@override final  int current;
@override final  int total;

@override
String toString() {
  return 'RefreshDiamondHistoryState.fetching(current: $current, total: $total)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$FetchingImpl&&(identical(other.current, current) || other.current == current)&&(identical(other.total, total) || other.total == total));
}


@override
int get hashCode => Object.hash(runtimeType,current,total);

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$FetchingImplCopyWith<_$FetchingImpl> get copyWith => __$$FetchingImplCopyWithImpl<_$FetchingImpl>(this, _$identity);

@override
@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int current,  int total)  fetching,required TResult Function()  success,required TResult Function( AppFailure failure)  failure,}) {
  return fetching(current,total);
}
@override
@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int current,  int total)?  fetching,TResult? Function()?  success,TResult? Function( AppFailure failure)?  failure,}) {
  return fetching?.call(current,total);
}
@override
@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int current,  int total)?  fetching,TResult Function()?  success,TResult Function( AppFailure failure)?  failure,required TResult orElse(),}) {
  if (fetching != null) {
    return fetching(current,total);
  }
  return orElse();
}
@override
@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Fetching value)  fetching,required TResult Function( _Success value)  success,required TResult Function( _Failure value)  failure,}) {
  return fetching(this);
}
@override
@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Fetching value)?  fetching,TResult? Function( _Success value)?  success,TResult? Function( _Failure value)?  failure,}) {
  return fetching?.call(this);
}
@override
@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Fetching value)?  fetching,TResult Function( _Success value)?  success,TResult Function( _Failure value)?  failure,required TResult orElse(),}) {
  if (fetching != null) {
    return fetching(this);
  }
  return orElse();
}

}


abstract class _Fetching implements RefreshDiamondHistoryState {
  const factory _Fetching({required final  int current, required final  int total}) = _$FetchingImpl;
  

  

 int get current; int get total;
@JsonKey(ignore: true)
_$$FetchingImplCopyWith<_$FetchingImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res>  {
  factory _$$SuccessImplCopyWith(_$SuccessImpl value, $Res Function(_$SuccessImpl) then) = __$$SuccessImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res> extends _$RefreshDiamondHistoryStateCopyWithImpl<$Res, _$SuccessImpl> implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(_$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);





}

/// @nodoc


class _$SuccessImpl  implements _Success {
  const _$SuccessImpl();

  



@override
String toString() {
  return 'RefreshDiamondHistoryState.success()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$SuccessImpl);
}


@override
int get hashCode => runtimeType.hashCode;


@override
@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int current,  int total)  fetching,required TResult Function()  success,required TResult Function( AppFailure failure)  failure,}) {
  return success();
}
@override
@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int current,  int total)?  fetching,TResult? Function()?  success,TResult? Function( AppFailure failure)?  failure,}) {
  return success?.call();
}
@override
@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int current,  int total)?  fetching,TResult Function()?  success,TResult Function( AppFailure failure)?  failure,required TResult orElse(),}) {
  if (success != null) {
    return success();
  }
  return orElse();
}
@override
@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Fetching value)  fetching,required TResult Function( _Success value)  success,required TResult Function( _Failure value)  failure,}) {
  return success(this);
}
@override
@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Fetching value)?  fetching,TResult? Function( _Success value)?  success,TResult? Function( _Failure value)?  failure,}) {
  return success?.call(this);
}
@override
@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Fetching value)?  fetching,TResult Function( _Success value)?  success,TResult Function( _Failure value)?  failure,required TResult orElse(),}) {
  if (success != null) {
    return success(this);
  }
  return orElse();
}

}


abstract class _Success implements RefreshDiamondHistoryState {
  const factory _Success() = _$SuccessImpl;
  

  



}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res>  {
  factory _$$FailureImplCopyWith(_$FailureImpl value, $Res Function(_$FailureImpl) then) = __$$FailureImplCopyWithImpl<$Res>;
@useResult
$Res call({
 AppFailure failure
});


$AppFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res> extends _$RefreshDiamondHistoryStateCopyWithImpl<$Res, _$FailureImpl> implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(_$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? failure = null,}) {
  return _then(_$FailureImpl(
null == failure ? _value.failure : failure // ignore: cast_nullable_to_non_nullable
as AppFailure,
  ));
}

@override
@pragma('vm:prefer-inline')
$AppFailureCopyWith<$Res> get failure {
  
  return $AppFailureCopyWith<$Res>(_value.failure, (value) {
    return _then(_value.copyWith(failure: value) );
  });
}
}

/// @nodoc


class _$FailureImpl  implements _Failure {
  const _$FailureImpl(this.failure);

  

@override final  AppFailure failure;

@override
String toString() {
  return 'RefreshDiamondHistoryState.failure(failure: $failure)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$FailureImpl&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$FailureImplCopyWith<_$FailureImpl> get copyWith => __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

@override
@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int current,  int total)  fetching,required TResult Function()  success,required TResult Function( AppFailure failure)  failure,}) {
  return failure(this.failure);
}
@override
@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int current,  int total)?  fetching,TResult? Function()?  success,TResult? Function( AppFailure failure)?  failure,}) {
  return failure?.call(this.failure);
}
@override
@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int current,  int total)?  fetching,TResult Function()?  success,TResult Function( AppFailure failure)?  failure,required TResult orElse(),}) {
  if (failure != null) {
    return failure(this.failure);
  }
  return orElse();
}
@override
@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Fetching value)  fetching,required TResult Function( _Success value)  success,required TResult Function( _Failure value)  failure,}) {
  return failure(this);
}
@override
@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Fetching value)?  fetching,TResult? Function( _Success value)?  success,TResult? Function( _Failure value)?  failure,}) {
  return failure?.call(this);
}
@override
@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Fetching value)?  fetching,TResult Function( _Success value)?  success,TResult Function( _Failure value)?  failure,required TResult orElse(),}) {
  if (failure != null) {
    return failure(this);
  }
  return orElse();
}

}


abstract class _Failure implements RefreshDiamondHistoryState {
  const factory _Failure(final  AppFailure failure) = _$FailureImpl;
  

  

 AppFailure get failure;
@JsonKey(ignore: true)
_$$FailureImplCopyWith<_$FailureImpl> get copyWith => throw _privateConstructorUsedError;

}
