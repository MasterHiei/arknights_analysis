import 'dart:convert';

import 'route_params.dart';

class RouteExtraCodec extends Codec<Object?, Object?> {
  const RouteExtraCodec();

  @override
  Converter<Object?, Object?> get decoder => const _Decoder();

  @override
  Converter<Object?, Object?> get encoder => const _Encoder();
}

class _Decoder extends Converter<Object?, Object?> {
  const _Decoder();
  @override
  Object? convert(Object? input) {
    if (input == null) {
      return null;
    }
    final List<Object?> objects = input as List<Object?>;
    switch (objects[0]) {
      case 'WebviewParams':
        return WebviewParams(
          initialUrl: objects[1]! as String,
          useNavigationBar: objects[2]! as bool,
        );
    }
    throw FormatException('Unable to parse input: $input.');
  }
}

class _Encoder extends Converter<Object?, Object?> {
  const _Encoder();
  @override
  Object? convert(Object? input) {
    if (input == null) {
      return null;
    }
    switch (input) {
      case WebviewParams _:
        return [
          'WebviewParams',
          input.initialUrl,
          input.useNavigationBar,
        ];
      default:
        throw FormatException('Cannot encode type ${input.runtimeType}.');
    }
  }
}
