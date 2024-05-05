// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_for_updates_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CheckForUpdatesState {

 bool get isChecking => throw _privateConstructorUsedError; bool get isManually => throw _privateConstructorUsedError; String get currentVersion => throw _privateConstructorUsedError; Option<Either<AppFailure, LatestRelease>> get failureOrLatestReleaseOption => throw _privateConstructorUsedError;







@JsonKey(ignore: true)
$CheckForUpdatesStateCopyWith<CheckForUpdatesState> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $CheckForUpdatesStateCopyWith<$Res>  {
  factory $CheckForUpdatesStateCopyWith(CheckForUpdatesState value, $Res Function(CheckForUpdatesState) then) = _$CheckForUpdatesStateCopyWithImpl<$Res, CheckForUpdatesState>;
@useResult
$Res call({
 bool isChecking, bool isManually, String currentVersion, Option<Either<AppFailure, LatestRelease>> failureOrLatestReleaseOption
});



}

/// @nodoc
class _$CheckForUpdatesStateCopyWithImpl<$Res,$Val extends CheckForUpdatesState> implements $CheckForUpdatesStateCopyWith<$Res> {
  _$CheckForUpdatesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

@pragma('vm:prefer-inline') @override $Res call({Object? isChecking = null,Object? isManually = null,Object? currentVersion = null,Object? failureOrLatestReleaseOption = null,}) {
  return _then(_value.copyWith(
isChecking: null == isChecking ? _value.isChecking : isChecking // ignore: cast_nullable_to_non_nullable
as bool,isManually: null == isManually ? _value.isManually : isManually // ignore: cast_nullable_to_non_nullable
as bool,currentVersion: null == currentVersion ? _value.currentVersion : currentVersion // ignore: cast_nullable_to_non_nullable
as String,failureOrLatestReleaseOption: null == failureOrLatestReleaseOption ? _value.failureOrLatestReleaseOption : failureOrLatestReleaseOption // ignore: cast_nullable_to_non_nullable
as Option<Either<AppFailure, LatestRelease>>,
  )as $Val);
}

}


/// @nodoc
abstract class _$$CheckForUpdatesStateImplCopyWith<$Res> implements $CheckForUpdatesStateCopyWith<$Res> {
  factory _$$CheckForUpdatesStateImplCopyWith(_$CheckForUpdatesStateImpl value, $Res Function(_$CheckForUpdatesStateImpl) then) = __$$CheckForUpdatesStateImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 bool isChecking, bool isManually, String currentVersion, Option<Either<AppFailure, LatestRelease>> failureOrLatestReleaseOption
});



}

/// @nodoc
class __$$CheckForUpdatesStateImplCopyWithImpl<$Res> extends _$CheckForUpdatesStateCopyWithImpl<$Res, _$CheckForUpdatesStateImpl> implements _$$CheckForUpdatesStateImplCopyWith<$Res> {
  __$$CheckForUpdatesStateImplCopyWithImpl(_$CheckForUpdatesStateImpl _value, $Res Function(_$CheckForUpdatesStateImpl) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? isChecking = null,Object? isManually = null,Object? currentVersion = null,Object? failureOrLatestReleaseOption = null,}) {
  return _then(_$CheckForUpdatesStateImpl(
isChecking: null == isChecking ? _value.isChecking : isChecking // ignore: cast_nullable_to_non_nullable
as bool,isManually: null == isManually ? _value.isManually : isManually // ignore: cast_nullable_to_non_nullable
as bool,currentVersion: null == currentVersion ? _value.currentVersion : currentVersion // ignore: cast_nullable_to_non_nullable
as String,failureOrLatestReleaseOption: null == failureOrLatestReleaseOption ? _value.failureOrLatestReleaseOption : failureOrLatestReleaseOption // ignore: cast_nullable_to_non_nullable
as Option<Either<AppFailure, LatestRelease>>,
  ));
}


}

/// @nodoc


class _$CheckForUpdatesStateImpl extends _CheckForUpdatesState  {
  const _$CheckForUpdatesStateImpl({required this.isChecking, required this.isManually, required this.currentVersion, required this.failureOrLatestReleaseOption}): super._();

  

@override final  bool isChecking;
@override final  bool isManually;
@override final  String currentVersion;
@override final  Option<Either<AppFailure, LatestRelease>> failureOrLatestReleaseOption;

@override
String toString() {
  return 'CheckForUpdatesState(isChecking: $isChecking, isManually: $isManually, currentVersion: $currentVersion, failureOrLatestReleaseOption: $failureOrLatestReleaseOption)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$CheckForUpdatesStateImpl&&(identical(other.isChecking, isChecking) || other.isChecking == isChecking)&&(identical(other.isManually, isManually) || other.isManually == isManually)&&(identical(other.currentVersion, currentVersion) || other.currentVersion == currentVersion)&&(identical(other.failureOrLatestReleaseOption, failureOrLatestReleaseOption) || other.failureOrLatestReleaseOption == failureOrLatestReleaseOption));
}


@override
int get hashCode => Object.hash(runtimeType,isChecking,isManually,currentVersion,failureOrLatestReleaseOption);

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$CheckForUpdatesStateImplCopyWith<_$CheckForUpdatesStateImpl> get copyWith => __$$CheckForUpdatesStateImplCopyWithImpl<_$CheckForUpdatesStateImpl>(this, _$identity);








}


abstract class _CheckForUpdatesState extends CheckForUpdatesState {
  const factory _CheckForUpdatesState({required final  bool isChecking, required final  bool isManually, required final  String currentVersion, required final  Option<Either<AppFailure, LatestRelease>> failureOrLatestReleaseOption}) = _$CheckForUpdatesStateImpl;
  const _CheckForUpdatesState._(): super._();

  

@override  bool get isChecking;@override  bool get isManually;@override  String get currentVersion;@override  Option<Either<AppFailure, LatestRelease>> get failureOrLatestReleaseOption;
@override @JsonKey(ignore: true)
_$$CheckForUpdatesStateImplCopyWith<_$CheckForUpdatesStateImpl> get copyWith => throw _privateConstructorUsedError;

}
