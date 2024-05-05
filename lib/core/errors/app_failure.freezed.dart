// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppFailure {


@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String message)  localizedError,required TResult Function( Object e)  unexpectedError,required TResult Function()  networkUnreachable,required TResult Function( int? code,  String? message)  remoteServerError,required TResult Function()  emptyLocalData,required TResult Function()  invalidToken,}) => throw _privateConstructorUsedError;
@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String message)?  localizedError,TResult? Function( Object e)?  unexpectedError,TResult? Function()?  networkUnreachable,TResult? Function( int? code,  String? message)?  remoteServerError,TResult? Function()?  emptyLocalData,TResult? Function()?  invalidToken,}) => throw _privateConstructorUsedError;
@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String message)?  localizedError,TResult Function( Object e)?  unexpectedError,TResult Function()?  networkUnreachable,TResult Function( int? code,  String? message)?  remoteServerError,TResult Function()?  emptyLocalData,TResult Function()?  invalidToken,required TResult orElse(),}) => throw _privateConstructorUsedError;
@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LocalizedError value)  localizedError,required TResult Function( _UnexpectedError value)  unexpectedError,required TResult Function( _NetworkUnreachable value)  networkUnreachable,required TResult Function( _RemoteServerError value)  remoteServerError,required TResult Function( _EmptyLocalData value)  emptyLocalData,required TResult Function( _InvalidToken value)  invalidToken,}) => throw _privateConstructorUsedError;
@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LocalizedError value)?  localizedError,TResult? Function( _UnexpectedError value)?  unexpectedError,TResult? Function( _NetworkUnreachable value)?  networkUnreachable,TResult? Function( _RemoteServerError value)?  remoteServerError,TResult? Function( _EmptyLocalData value)?  emptyLocalData,TResult? Function( _InvalidToken value)?  invalidToken,}) => throw _privateConstructorUsedError;
@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LocalizedError value)?  localizedError,TResult Function( _UnexpectedError value)?  unexpectedError,TResult Function( _NetworkUnreachable value)?  networkUnreachable,TResult Function( _RemoteServerError value)?  remoteServerError,TResult Function( _EmptyLocalData value)?  emptyLocalData,TResult Function( _InvalidToken value)?  invalidToken,required TResult orElse(),}) => throw _privateConstructorUsedError;


}

/// @nodoc
abstract class $AppFailureCopyWith<$Res>  {
  factory $AppFailureCopyWith(AppFailure value, $Res Function(AppFailure) then) = _$AppFailureCopyWithImpl<$Res, AppFailure>;



}

/// @nodoc
class _$AppFailureCopyWithImpl<$Res,$Val extends AppFailure> implements $AppFailureCopyWith<$Res> {
  _$AppFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;



}


/// @nodoc
abstract class _$$LocalizedErrorImplCopyWith<$Res>  {
  factory _$$LocalizedErrorImplCopyWith(_$LocalizedErrorImpl value, $Res Function(_$LocalizedErrorImpl) then) = __$$LocalizedErrorImplCopyWithImpl<$Res>;
@useResult
$Res call({
 String message
});



}

/// @nodoc
class __$$LocalizedErrorImplCopyWithImpl<$Res> extends _$AppFailureCopyWithImpl<$Res, _$LocalizedErrorImpl> implements _$$LocalizedErrorImplCopyWith<$Res> {
  __$$LocalizedErrorImplCopyWithImpl(_$LocalizedErrorImpl _value, $Res Function(_$LocalizedErrorImpl) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_$LocalizedErrorImpl(
null == message ? _value.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$LocalizedErrorImpl extends _LocalizedError  {
  const _$LocalizedErrorImpl(this.message): super._();

  

@override final  String message;

@override
String toString() {
  return 'AppFailure.localizedError(message: $message)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$LocalizedErrorImpl&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$LocalizedErrorImplCopyWith<_$LocalizedErrorImpl> get copyWith => __$$LocalizedErrorImplCopyWithImpl<_$LocalizedErrorImpl>(this, _$identity);

@override
@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String message)  localizedError,required TResult Function( Object e)  unexpectedError,required TResult Function()  networkUnreachable,required TResult Function( int? code,  String? message)  remoteServerError,required TResult Function()  emptyLocalData,required TResult Function()  invalidToken,}) {
  return localizedError(message);
}
@override
@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String message)?  localizedError,TResult? Function( Object e)?  unexpectedError,TResult? Function()?  networkUnreachable,TResult? Function( int? code,  String? message)?  remoteServerError,TResult? Function()?  emptyLocalData,TResult? Function()?  invalidToken,}) {
  return localizedError?.call(message);
}
@override
@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String message)?  localizedError,TResult Function( Object e)?  unexpectedError,TResult Function()?  networkUnreachable,TResult Function( int? code,  String? message)?  remoteServerError,TResult Function()?  emptyLocalData,TResult Function()?  invalidToken,required TResult orElse(),}) {
  if (localizedError != null) {
    return localizedError(message);
  }
  return orElse();
}
@override
@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LocalizedError value)  localizedError,required TResult Function( _UnexpectedError value)  unexpectedError,required TResult Function( _NetworkUnreachable value)  networkUnreachable,required TResult Function( _RemoteServerError value)  remoteServerError,required TResult Function( _EmptyLocalData value)  emptyLocalData,required TResult Function( _InvalidToken value)  invalidToken,}) {
  return localizedError(this);
}
@override
@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LocalizedError value)?  localizedError,TResult? Function( _UnexpectedError value)?  unexpectedError,TResult? Function( _NetworkUnreachable value)?  networkUnreachable,TResult? Function( _RemoteServerError value)?  remoteServerError,TResult? Function( _EmptyLocalData value)?  emptyLocalData,TResult? Function( _InvalidToken value)?  invalidToken,}) {
  return localizedError?.call(this);
}
@override
@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LocalizedError value)?  localizedError,TResult Function( _UnexpectedError value)?  unexpectedError,TResult Function( _NetworkUnreachable value)?  networkUnreachable,TResult Function( _RemoteServerError value)?  remoteServerError,TResult Function( _EmptyLocalData value)?  emptyLocalData,TResult Function( _InvalidToken value)?  invalidToken,required TResult orElse(),}) {
  if (localizedError != null) {
    return localizedError(this);
  }
  return orElse();
}

}


abstract class _LocalizedError extends AppFailure {
  const factory _LocalizedError(final  String message) = _$LocalizedErrorImpl;
  const _LocalizedError._(): super._();

  

 String get message;
@JsonKey(ignore: true)
_$$LocalizedErrorImplCopyWith<_$LocalizedErrorImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$UnexpectedErrorImplCopyWith<$Res>  {
  factory _$$UnexpectedErrorImplCopyWith(_$UnexpectedErrorImpl value, $Res Function(_$UnexpectedErrorImpl) then) = __$$UnexpectedErrorImplCopyWithImpl<$Res>;
@useResult
$Res call({
 Object e
});



}

/// @nodoc
class __$$UnexpectedErrorImplCopyWithImpl<$Res> extends _$AppFailureCopyWithImpl<$Res, _$UnexpectedErrorImpl> implements _$$UnexpectedErrorImplCopyWith<$Res> {
  __$$UnexpectedErrorImplCopyWithImpl(_$UnexpectedErrorImpl _value, $Res Function(_$UnexpectedErrorImpl) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? e = null,}) {
  return _then(_$UnexpectedErrorImpl(
null == e ? _value.e : e ,
  ));
}


}

/// @nodoc


class _$UnexpectedErrorImpl extends _UnexpectedError  {
  const _$UnexpectedErrorImpl(this.e): super._();

  

@override final  Object e;

@override
String toString() {
  return 'AppFailure.unexpectedError(e: $e)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$UnexpectedErrorImpl&&const DeepCollectionEquality().equals(other.e, e));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(e));

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$UnexpectedErrorImplCopyWith<_$UnexpectedErrorImpl> get copyWith => __$$UnexpectedErrorImplCopyWithImpl<_$UnexpectedErrorImpl>(this, _$identity);

@override
@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String message)  localizedError,required TResult Function( Object e)  unexpectedError,required TResult Function()  networkUnreachable,required TResult Function( int? code,  String? message)  remoteServerError,required TResult Function()  emptyLocalData,required TResult Function()  invalidToken,}) {
  return unexpectedError(e);
}
@override
@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String message)?  localizedError,TResult? Function( Object e)?  unexpectedError,TResult? Function()?  networkUnreachable,TResult? Function( int? code,  String? message)?  remoteServerError,TResult? Function()?  emptyLocalData,TResult? Function()?  invalidToken,}) {
  return unexpectedError?.call(e);
}
@override
@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String message)?  localizedError,TResult Function( Object e)?  unexpectedError,TResult Function()?  networkUnreachable,TResult Function( int? code,  String? message)?  remoteServerError,TResult Function()?  emptyLocalData,TResult Function()?  invalidToken,required TResult orElse(),}) {
  if (unexpectedError != null) {
    return unexpectedError(e);
  }
  return orElse();
}
@override
@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LocalizedError value)  localizedError,required TResult Function( _UnexpectedError value)  unexpectedError,required TResult Function( _NetworkUnreachable value)  networkUnreachable,required TResult Function( _RemoteServerError value)  remoteServerError,required TResult Function( _EmptyLocalData value)  emptyLocalData,required TResult Function( _InvalidToken value)  invalidToken,}) {
  return unexpectedError(this);
}
@override
@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LocalizedError value)?  localizedError,TResult? Function( _UnexpectedError value)?  unexpectedError,TResult? Function( _NetworkUnreachable value)?  networkUnreachable,TResult? Function( _RemoteServerError value)?  remoteServerError,TResult? Function( _EmptyLocalData value)?  emptyLocalData,TResult? Function( _InvalidToken value)?  invalidToken,}) {
  return unexpectedError?.call(this);
}
@override
@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LocalizedError value)?  localizedError,TResult Function( _UnexpectedError value)?  unexpectedError,TResult Function( _NetworkUnreachable value)?  networkUnreachable,TResult Function( _RemoteServerError value)?  remoteServerError,TResult Function( _EmptyLocalData value)?  emptyLocalData,TResult Function( _InvalidToken value)?  invalidToken,required TResult orElse(),}) {
  if (unexpectedError != null) {
    return unexpectedError(this);
  }
  return orElse();
}

}


abstract class _UnexpectedError extends AppFailure {
  const factory _UnexpectedError(final  Object e) = _$UnexpectedErrorImpl;
  const _UnexpectedError._(): super._();

  

 Object get e;
@JsonKey(ignore: true)
_$$UnexpectedErrorImplCopyWith<_$UnexpectedErrorImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$NetworkUnreachableImplCopyWith<$Res>  {
  factory _$$NetworkUnreachableImplCopyWith(_$NetworkUnreachableImpl value, $Res Function(_$NetworkUnreachableImpl) then) = __$$NetworkUnreachableImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$NetworkUnreachableImplCopyWithImpl<$Res> extends _$AppFailureCopyWithImpl<$Res, _$NetworkUnreachableImpl> implements _$$NetworkUnreachableImplCopyWith<$Res> {
  __$$NetworkUnreachableImplCopyWithImpl(_$NetworkUnreachableImpl _value, $Res Function(_$NetworkUnreachableImpl) _then)
      : super(_value, _then);





}

/// @nodoc


class _$NetworkUnreachableImpl extends _NetworkUnreachable  {
  const _$NetworkUnreachableImpl(): super._();

  



@override
String toString() {
  return 'AppFailure.networkUnreachable()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$NetworkUnreachableImpl);
}


@override
int get hashCode => runtimeType.hashCode;


@override
@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String message)  localizedError,required TResult Function( Object e)  unexpectedError,required TResult Function()  networkUnreachable,required TResult Function( int? code,  String? message)  remoteServerError,required TResult Function()  emptyLocalData,required TResult Function()  invalidToken,}) {
  return networkUnreachable();
}
@override
@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String message)?  localizedError,TResult? Function( Object e)?  unexpectedError,TResult? Function()?  networkUnreachable,TResult? Function( int? code,  String? message)?  remoteServerError,TResult? Function()?  emptyLocalData,TResult? Function()?  invalidToken,}) {
  return networkUnreachable?.call();
}
@override
@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String message)?  localizedError,TResult Function( Object e)?  unexpectedError,TResult Function()?  networkUnreachable,TResult Function( int? code,  String? message)?  remoteServerError,TResult Function()?  emptyLocalData,TResult Function()?  invalidToken,required TResult orElse(),}) {
  if (networkUnreachable != null) {
    return networkUnreachable();
  }
  return orElse();
}
@override
@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LocalizedError value)  localizedError,required TResult Function( _UnexpectedError value)  unexpectedError,required TResult Function( _NetworkUnreachable value)  networkUnreachable,required TResult Function( _RemoteServerError value)  remoteServerError,required TResult Function( _EmptyLocalData value)  emptyLocalData,required TResult Function( _InvalidToken value)  invalidToken,}) {
  return networkUnreachable(this);
}
@override
@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LocalizedError value)?  localizedError,TResult? Function( _UnexpectedError value)?  unexpectedError,TResult? Function( _NetworkUnreachable value)?  networkUnreachable,TResult? Function( _RemoteServerError value)?  remoteServerError,TResult? Function( _EmptyLocalData value)?  emptyLocalData,TResult? Function( _InvalidToken value)?  invalidToken,}) {
  return networkUnreachable?.call(this);
}
@override
@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LocalizedError value)?  localizedError,TResult Function( _UnexpectedError value)?  unexpectedError,TResult Function( _NetworkUnreachable value)?  networkUnreachable,TResult Function( _RemoteServerError value)?  remoteServerError,TResult Function( _EmptyLocalData value)?  emptyLocalData,TResult Function( _InvalidToken value)?  invalidToken,required TResult orElse(),}) {
  if (networkUnreachable != null) {
    return networkUnreachable(this);
  }
  return orElse();
}

}


abstract class _NetworkUnreachable extends AppFailure {
  const factory _NetworkUnreachable() = _$NetworkUnreachableImpl;
  const _NetworkUnreachable._(): super._();

  



}

/// @nodoc
abstract class _$$RemoteServerErrorImplCopyWith<$Res>  {
  factory _$$RemoteServerErrorImplCopyWith(_$RemoteServerErrorImpl value, $Res Function(_$RemoteServerErrorImpl) then) = __$$RemoteServerErrorImplCopyWithImpl<$Res>;
@useResult
$Res call({
 int? code, String? message
});



}

/// @nodoc
class __$$RemoteServerErrorImplCopyWithImpl<$Res> extends _$AppFailureCopyWithImpl<$Res, _$RemoteServerErrorImpl> implements _$$RemoteServerErrorImplCopyWith<$Res> {
  __$$RemoteServerErrorImplCopyWithImpl(_$RemoteServerErrorImpl _value, $Res Function(_$RemoteServerErrorImpl) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? code = freezed,Object? message = freezed,}) {
  return _then(_$RemoteServerErrorImpl(
code: freezed == code ? _value.code : code // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _value.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _$RemoteServerErrorImpl extends _RemoteServerError  {
  const _$RemoteServerErrorImpl({this.code, this.message}): super._();

  

@override final  int? code;
@override final  String? message;

@override
String toString() {
  return 'AppFailure.remoteServerError(code: $code, message: $message)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$RemoteServerErrorImpl&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,code,message);

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$RemoteServerErrorImplCopyWith<_$RemoteServerErrorImpl> get copyWith => __$$RemoteServerErrorImplCopyWithImpl<_$RemoteServerErrorImpl>(this, _$identity);

@override
@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String message)  localizedError,required TResult Function( Object e)  unexpectedError,required TResult Function()  networkUnreachable,required TResult Function( int? code,  String? message)  remoteServerError,required TResult Function()  emptyLocalData,required TResult Function()  invalidToken,}) {
  return remoteServerError(code,message);
}
@override
@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String message)?  localizedError,TResult? Function( Object e)?  unexpectedError,TResult? Function()?  networkUnreachable,TResult? Function( int? code,  String? message)?  remoteServerError,TResult? Function()?  emptyLocalData,TResult? Function()?  invalidToken,}) {
  return remoteServerError?.call(code,message);
}
@override
@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String message)?  localizedError,TResult Function( Object e)?  unexpectedError,TResult Function()?  networkUnreachable,TResult Function( int? code,  String? message)?  remoteServerError,TResult Function()?  emptyLocalData,TResult Function()?  invalidToken,required TResult orElse(),}) {
  if (remoteServerError != null) {
    return remoteServerError(code,message);
  }
  return orElse();
}
@override
@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LocalizedError value)  localizedError,required TResult Function( _UnexpectedError value)  unexpectedError,required TResult Function( _NetworkUnreachable value)  networkUnreachable,required TResult Function( _RemoteServerError value)  remoteServerError,required TResult Function( _EmptyLocalData value)  emptyLocalData,required TResult Function( _InvalidToken value)  invalidToken,}) {
  return remoteServerError(this);
}
@override
@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LocalizedError value)?  localizedError,TResult? Function( _UnexpectedError value)?  unexpectedError,TResult? Function( _NetworkUnreachable value)?  networkUnreachable,TResult? Function( _RemoteServerError value)?  remoteServerError,TResult? Function( _EmptyLocalData value)?  emptyLocalData,TResult? Function( _InvalidToken value)?  invalidToken,}) {
  return remoteServerError?.call(this);
}
@override
@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LocalizedError value)?  localizedError,TResult Function( _UnexpectedError value)?  unexpectedError,TResult Function( _NetworkUnreachable value)?  networkUnreachable,TResult Function( _RemoteServerError value)?  remoteServerError,TResult Function( _EmptyLocalData value)?  emptyLocalData,TResult Function( _InvalidToken value)?  invalidToken,required TResult orElse(),}) {
  if (remoteServerError != null) {
    return remoteServerError(this);
  }
  return orElse();
}

}


abstract class _RemoteServerError extends AppFailure {
  const factory _RemoteServerError({final  int? code, final  String? message}) = _$RemoteServerErrorImpl;
  const _RemoteServerError._(): super._();

  

 int? get code; String? get message;
@JsonKey(ignore: true)
_$$RemoteServerErrorImplCopyWith<_$RemoteServerErrorImpl> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$EmptyLocalDataImplCopyWith<$Res>  {
  factory _$$EmptyLocalDataImplCopyWith(_$EmptyLocalDataImpl value, $Res Function(_$EmptyLocalDataImpl) then) = __$$EmptyLocalDataImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$EmptyLocalDataImplCopyWithImpl<$Res> extends _$AppFailureCopyWithImpl<$Res, _$EmptyLocalDataImpl> implements _$$EmptyLocalDataImplCopyWith<$Res> {
  __$$EmptyLocalDataImplCopyWithImpl(_$EmptyLocalDataImpl _value, $Res Function(_$EmptyLocalDataImpl) _then)
      : super(_value, _then);





}

/// @nodoc


class _$EmptyLocalDataImpl extends _EmptyLocalData  {
  const _$EmptyLocalDataImpl(): super._();

  



@override
String toString() {
  return 'AppFailure.emptyLocalData()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$EmptyLocalDataImpl);
}


@override
int get hashCode => runtimeType.hashCode;


@override
@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String message)  localizedError,required TResult Function( Object e)  unexpectedError,required TResult Function()  networkUnreachable,required TResult Function( int? code,  String? message)  remoteServerError,required TResult Function()  emptyLocalData,required TResult Function()  invalidToken,}) {
  return emptyLocalData();
}
@override
@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String message)?  localizedError,TResult? Function( Object e)?  unexpectedError,TResult? Function()?  networkUnreachable,TResult? Function( int? code,  String? message)?  remoteServerError,TResult? Function()?  emptyLocalData,TResult? Function()?  invalidToken,}) {
  return emptyLocalData?.call();
}
@override
@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String message)?  localizedError,TResult Function( Object e)?  unexpectedError,TResult Function()?  networkUnreachable,TResult Function( int? code,  String? message)?  remoteServerError,TResult Function()?  emptyLocalData,TResult Function()?  invalidToken,required TResult orElse(),}) {
  if (emptyLocalData != null) {
    return emptyLocalData();
  }
  return orElse();
}
@override
@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LocalizedError value)  localizedError,required TResult Function( _UnexpectedError value)  unexpectedError,required TResult Function( _NetworkUnreachable value)  networkUnreachable,required TResult Function( _RemoteServerError value)  remoteServerError,required TResult Function( _EmptyLocalData value)  emptyLocalData,required TResult Function( _InvalidToken value)  invalidToken,}) {
  return emptyLocalData(this);
}
@override
@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LocalizedError value)?  localizedError,TResult? Function( _UnexpectedError value)?  unexpectedError,TResult? Function( _NetworkUnreachable value)?  networkUnreachable,TResult? Function( _RemoteServerError value)?  remoteServerError,TResult? Function( _EmptyLocalData value)?  emptyLocalData,TResult? Function( _InvalidToken value)?  invalidToken,}) {
  return emptyLocalData?.call(this);
}
@override
@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LocalizedError value)?  localizedError,TResult Function( _UnexpectedError value)?  unexpectedError,TResult Function( _NetworkUnreachable value)?  networkUnreachable,TResult Function( _RemoteServerError value)?  remoteServerError,TResult Function( _EmptyLocalData value)?  emptyLocalData,TResult Function( _InvalidToken value)?  invalidToken,required TResult orElse(),}) {
  if (emptyLocalData != null) {
    return emptyLocalData(this);
  }
  return orElse();
}

}


abstract class _EmptyLocalData extends AppFailure {
  const factory _EmptyLocalData() = _$EmptyLocalDataImpl;
  const _EmptyLocalData._(): super._();

  



}

/// @nodoc
abstract class _$$InvalidTokenImplCopyWith<$Res>  {
  factory _$$InvalidTokenImplCopyWith(_$InvalidTokenImpl value, $Res Function(_$InvalidTokenImpl) then) = __$$InvalidTokenImplCopyWithImpl<$Res>;



}

/// @nodoc
class __$$InvalidTokenImplCopyWithImpl<$Res> extends _$AppFailureCopyWithImpl<$Res, _$InvalidTokenImpl> implements _$$InvalidTokenImplCopyWith<$Res> {
  __$$InvalidTokenImplCopyWithImpl(_$InvalidTokenImpl _value, $Res Function(_$InvalidTokenImpl) _then)
      : super(_value, _then);





}

/// @nodoc


class _$InvalidTokenImpl extends _InvalidToken  {
  const _$InvalidTokenImpl(): super._();

  



@override
String toString() {
  return 'AppFailure.invalidToken()';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$InvalidTokenImpl);
}


@override
int get hashCode => runtimeType.hashCode;


@override
@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String message)  localizedError,required TResult Function( Object e)  unexpectedError,required TResult Function()  networkUnreachable,required TResult Function( int? code,  String? message)  remoteServerError,required TResult Function()  emptyLocalData,required TResult Function()  invalidToken,}) {
  return invalidToken();
}
@override
@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String message)?  localizedError,TResult? Function( Object e)?  unexpectedError,TResult? Function()?  networkUnreachable,TResult? Function( int? code,  String? message)?  remoteServerError,TResult? Function()?  emptyLocalData,TResult? Function()?  invalidToken,}) {
  return invalidToken?.call();
}
@override
@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String message)?  localizedError,TResult Function( Object e)?  unexpectedError,TResult Function()?  networkUnreachable,TResult Function( int? code,  String? message)?  remoteServerError,TResult Function()?  emptyLocalData,TResult Function()?  invalidToken,required TResult orElse(),}) {
  if (invalidToken != null) {
    return invalidToken();
  }
  return orElse();
}
@override
@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LocalizedError value)  localizedError,required TResult Function( _UnexpectedError value)  unexpectedError,required TResult Function( _NetworkUnreachable value)  networkUnreachable,required TResult Function( _RemoteServerError value)  remoteServerError,required TResult Function( _EmptyLocalData value)  emptyLocalData,required TResult Function( _InvalidToken value)  invalidToken,}) {
  return invalidToken(this);
}
@override
@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LocalizedError value)?  localizedError,TResult? Function( _UnexpectedError value)?  unexpectedError,TResult? Function( _NetworkUnreachable value)?  networkUnreachable,TResult? Function( _RemoteServerError value)?  remoteServerError,TResult? Function( _EmptyLocalData value)?  emptyLocalData,TResult? Function( _InvalidToken value)?  invalidToken,}) {
  return invalidToken?.call(this);
}
@override
@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LocalizedError value)?  localizedError,TResult Function( _UnexpectedError value)?  unexpectedError,TResult Function( _NetworkUnreachable value)?  networkUnreachable,TResult Function( _RemoteServerError value)?  remoteServerError,TResult Function( _EmptyLocalData value)?  emptyLocalData,TResult Function( _InvalidToken value)?  invalidToken,required TResult orElse(),}) {
  if (invalidToken != null) {
    return invalidToken(this);
  }
  return orElse();
}

}


abstract class _InvalidToken extends AppFailure {
  const factory _InvalidToken() = _$InvalidTokenImpl;
  const _InvalidToken._(): super._();

  



}
