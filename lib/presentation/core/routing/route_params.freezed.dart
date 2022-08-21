// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'route_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RouteParams {}

/// @nodoc

class _$PortalParams implements PortalParams {
  const _$PortalParams({required this.token});

  @override
  final Token token;

  @override
  String toString() {
    return 'RouteParams.portal(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PortalParams &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(token));
}

abstract class PortalParams implements RouteParams {
  const factory PortalParams({required final Token token}) = _$PortalParams;

  Token get token;
}

/// @nodoc

class _$WebviewParams implements WebviewParams {
  const _$WebviewParams(
      {required this.initialUrl, this.enableNavigationBar = true});

  @override
  final String initialUrl;
  @override
  @JsonKey()
  final bool enableNavigationBar;

  @override
  String toString() {
    return 'RouteParams.webview(initialUrl: $initialUrl, enableNavigationBar: $enableNavigationBar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebviewParams &&
            const DeepCollectionEquality()
                .equals(other.initialUrl, initialUrl) &&
            const DeepCollectionEquality()
                .equals(other.enableNavigationBar, enableNavigationBar));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(initialUrl),
      const DeepCollectionEquality().hash(enableNavigationBar));
}

abstract class WebviewParams implements RouteParams {
  const factory WebviewParams(
      {required final String initialUrl,
      final bool enableNavigationBar}) = _$WebviewParams;

  String get initialUrl;
  bool get enableNavigationBar;
}
