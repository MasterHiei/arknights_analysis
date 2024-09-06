// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RouteParams {

 String get initialUrl => throw _privateConstructorUsedError; bool get useNavigationBar => throw _privateConstructorUsedError;
@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String initialUrl,  bool useNavigationBar)  webview,}) => throw _privateConstructorUsedError;
@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String initialUrl,  bool useNavigationBar)?  webview,}) => throw _privateConstructorUsedError;
@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String initialUrl,  bool useNavigationBar)?  webview,required TResult orElse(),}) => throw _privateConstructorUsedError;
@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( WebviewParams value)  webview,}) => throw _privateConstructorUsedError;
@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( WebviewParams value)?  webview,}) => throw _privateConstructorUsedError;
@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( WebviewParams value)?  webview,required TResult orElse(),}) => throw _privateConstructorUsedError;

/// Create a copy of RouteParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
$RouteParamsCopyWith<RouteParams> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $RouteParamsCopyWith<$Res>  {
  factory $RouteParamsCopyWith(RouteParams value, $Res Function(RouteParams) then) = _$RouteParamsCopyWithImpl<$Res, RouteParams>;
@useResult
$Res call({
 String initialUrl, bool useNavigationBar
});



}

/// @nodoc
class _$RouteParamsCopyWithImpl<$Res,$Val extends RouteParams> implements $RouteParamsCopyWith<$Res> {
  _$RouteParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

/// Create a copy of RouteParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? initialUrl = null,Object? useNavigationBar = null,}) {
  return _then(_value.copyWith(
initialUrl: null == initialUrl ? _value.initialUrl : initialUrl // ignore: cast_nullable_to_non_nullable
as String,useNavigationBar: null == useNavigationBar ? _value.useNavigationBar : useNavigationBar // ignore: cast_nullable_to_non_nullable
as bool,
  )as $Val);
}

}


/// @nodoc
abstract class _$$WebviewParamsImplCopyWith<$Res> implements $RouteParamsCopyWith<$Res> {
  factory _$$WebviewParamsImplCopyWith(_$WebviewParamsImpl value, $Res Function(_$WebviewParamsImpl) then) = __$$WebviewParamsImplCopyWithImpl<$Res>;
@override @useResult
$Res call({
 String initialUrl, bool useNavigationBar
});



}

/// @nodoc
class __$$WebviewParamsImplCopyWithImpl<$Res> extends _$RouteParamsCopyWithImpl<$Res, _$WebviewParamsImpl> implements _$$WebviewParamsImplCopyWith<$Res> {
  __$$WebviewParamsImplCopyWithImpl(_$WebviewParamsImpl _value, $Res Function(_$WebviewParamsImpl) _then)
      : super(_value, _then);


/// Create a copy of RouteParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? initialUrl = null,Object? useNavigationBar = null,}) {
  return _then(_$WebviewParamsImpl(
initialUrl: null == initialUrl ? _value.initialUrl : initialUrl // ignore: cast_nullable_to_non_nullable
as String,useNavigationBar: null == useNavigationBar ? _value.useNavigationBar : useNavigationBar // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _$WebviewParamsImpl  implements WebviewParams {
  const _$WebviewParamsImpl({required this.initialUrl, this.useNavigationBar = true});

  

@override final  String initialUrl;
@override@JsonKey() final  bool useNavigationBar;

@override
String toString() {
  return 'RouteParams.webview(initialUrl: $initialUrl, useNavigationBar: $useNavigationBar)';
}


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$WebviewParamsImpl&&(identical(other.initialUrl, initialUrl) || other.initialUrl == initialUrl)&&(identical(other.useNavigationBar, useNavigationBar) || other.useNavigationBar == useNavigationBar));
}


@override
int get hashCode => Object.hash(runtimeType,initialUrl,useNavigationBar);

/// Create a copy of RouteParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$WebviewParamsImplCopyWith<_$WebviewParamsImpl> get copyWith => __$$WebviewParamsImplCopyWithImpl<_$WebviewParamsImpl>(this, _$identity);

@override
@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String initialUrl,  bool useNavigationBar)  webview,}) {
  return webview(initialUrl,useNavigationBar);
}
@override
@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String initialUrl,  bool useNavigationBar)?  webview,}) {
  return webview?.call(initialUrl,useNavigationBar);
}
@override
@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String initialUrl,  bool useNavigationBar)?  webview,required TResult orElse(),}) {
  if (webview != null) {
    return webview(initialUrl,useNavigationBar);
  }
  return orElse();
}
@override
@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( WebviewParams value)  webview,}) {
  return webview(this);
}
@override
@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( WebviewParams value)?  webview,}) {
  return webview?.call(this);
}
@override
@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( WebviewParams value)?  webview,required TResult orElse(),}) {
  if (webview != null) {
    return webview(this);
  }
  return orElse();
}

}


abstract class WebviewParams implements RouteParams {
  const factory WebviewParams({required final  String initialUrl, final  bool useNavigationBar}) = _$WebviewParamsImpl;
  

  

@override String get initialUrl;@override bool get useNavigationBar;
/// Create a copy of RouteParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
_$$WebviewParamsImplCopyWith<_$WebviewParamsImpl> get copyWith => throw _privateConstructorUsedError;

}
