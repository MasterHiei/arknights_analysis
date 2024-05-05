// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SplashState {

 bool get startAnimation => throw _privateConstructorUsedError; bool get isFetching => throw _privateConstructorUsedError; bool get shouldTransition => throw _privateConstructorUsedError; Option<AppFailure> get failureOption => throw _privateConstructorUsedError;







@JsonKey(ignore: true)
$SplashStateCopyWith<SplashState> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $SplashStateCopyWith<$Res>  {
  factory $SplashStateCopyWith(SplashState value, $Res Function(SplashState) then) = _$SplashStateCopyWithImpl<$Res, SplashState>;
@useResult
$Res call({
 bool startAnimation, bool isFetching, bool shouldTransition, Option<AppFailure> failureOption
});



}

/// @nodoc
class _$SplashStateCopyWithImpl<$Res,$Val extends SplashState> implements $SplashStateCopyWith<$Res> {
  _$SplashStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

@pragma('vm:prefer-inline') @override $Res call({Object? startAnimation = null,Object? isFetching = null,Object? shouldTransition = null,Object? failureOption = null,}) {
  return _then(_value.copyWith(
startAnimation: null == startAnimation ? _value.startAnimation : startAnimation // ignore: cast_nullable_to_non_nullable
as bool,isFetching: null == isFetching ? _value.isFetching : isFetching // ignore: cast_nullable_to_non_nullable
as bool,shouldTransition: null == shouldTransition ? _value.shouldTransition : shouldTransition // ignore: cast_nullable_to_non_nullable
as bool,failureOption: null == failureOption ? _value.failureOption : failureOption // ignore: cast_nullable_to_non_nullable
as Option<AppFailure>,
  )as $Val);
}

}


/// @nodoc
abstract class _$$SplashStateImplCopyWith<$Res> implements $SplashStateCopyWith<$Res> {
  factory _$$SplashStateImplCopyWith(_$SplashStateImpl value, $Res Function(_$SplashStateImpl) then) = __$$SplashStateImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 bool startAnimation, bool isFetching, bool shouldTransition, Option<AppFailure> failureOption
});



}

/// @nodoc
class __$$SplashStateImplCopyWithImpl<$Res> extends _$SplashStateCopyWithImpl<$Res, _$SplashStateImpl> implements _$$SplashStateImplCopyWith<$Res> {
  __$$SplashStateImplCopyWithImpl(_$SplashStateImpl _value, $Res Function(_$SplashStateImpl) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? startAnimation = null,Object? isFetching = null,Object? shouldTransition = null,Object? failureOption = null,}) {
  return _then(_$SplashStateImpl(
startAnimation: null == startAnimation ? _value.startAnimation : startAnimation // ignore: cast_nullable_to_non_nullable
as bool,isFetching: null == isFetching ? _value.isFetching : isFetching // ignore: cast_nullable_to_non_nullable
as bool,shouldTransition: null == shouldTransition ? _value.shouldTransition : shouldTransition // ignore: cast_nullable_to_non_nullable
as bool,failureOption: null == failureOption ? _value.failureOption : failureOption // ignore: cast_nullable_to_non_nullable
as Option<AppFailure>,
  ));
}


}

/// @nodoc


class _$SplashStateImpl extends _SplashState  {
  const _$SplashStateImpl({this.startAnimation = false, this.isFetching = false, this.shouldTransition = false, this.failureOption = const None()}): super._();

  

@override@JsonKey() final  bool startAnimation;
@override@JsonKey() final  bool isFetching;
@override@JsonKey() final  bool shouldTransition;
@override@JsonKey() final  Option<AppFailure> failureOption;

@override
String toString() {
  return 'SplashState(startAnimation: $startAnimation, isFetching: $isFetching, shouldTransition: $shouldTransition, failureOption: $failureOption)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$SplashStateImpl&&(identical(other.startAnimation, startAnimation) || other.startAnimation == startAnimation)&&(identical(other.isFetching, isFetching) || other.isFetching == isFetching)&&(identical(other.shouldTransition, shouldTransition) || other.shouldTransition == shouldTransition)&&(identical(other.failureOption, failureOption) || other.failureOption == failureOption));
}


@override
int get hashCode => Object.hash(runtimeType,startAnimation,isFetching,shouldTransition,failureOption);

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$SplashStateImplCopyWith<_$SplashStateImpl> get copyWith => __$$SplashStateImplCopyWithImpl<_$SplashStateImpl>(this, _$identity);








}


abstract class _SplashState extends SplashState {
  const factory _SplashState({final  bool startAnimation, final  bool isFetching, final  bool shouldTransition, final  Option<AppFailure> failureOption}) = _$SplashStateImpl;
  const _SplashState._(): super._();

  

@override  bool get startAnimation;@override  bool get isFetching;@override  bool get shouldTransition;@override  Option<AppFailure> get failureOption;
@override @JsonKey(ignore: true)
_$$SplashStateImplCopyWith<_$SplashStateImpl> get copyWith => throw _privateConstructorUsedError;

}
