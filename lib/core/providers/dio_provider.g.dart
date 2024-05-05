// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dio_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$akDioHash() => r'425e65f7cd0e9658db69bc897663174b00c049b5';

/// See also [akDio].
@ProviderFor(akDio)
final akDioProvider = AutoDisposeProvider<Dio>.internal(
  akDio,
  name: r'akDioProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$akDioHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AkDioRef = AutoDisposeProviderRef<Dio>;
String _$asDioHash() => r'61d7c4e6297a9735c7f4828a0b3c54bfdc63d067';

/// See also [asDio].
@ProviderFor(asDio)
final asDioProvider = AutoDisposeProvider<Dio>.internal(
  asDio,
  name: r'asDioProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$asDioHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AsDioRef = AutoDisposeProviderRef<Dio>;
String _$gdDioHash() => r'5a55e14779e018115c5099856d8981081b3dd9dd';

/// See also [gdDio].
@ProviderFor(gdDio)
final gdDioProvider = AutoDisposeProvider<Dio>.internal(
  gdDio,
  name: r'gdDioProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$gdDioHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GdDioRef = AutoDisposeProviderRef<Dio>;
String _$gdApiDioHash() => r'2b024c684742b23ce9024257750fdc752b6f9179';

/// See also [gdApiDio].
@ProviderFor(gdApiDio)
final gdApiDioProvider = AutoDisposeProvider<Dio>.internal(
  gdApiDio,
  name: r'gdApiDioProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$gdApiDioHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GdApiDioRef = AutoDisposeProviderRef<Dio>;
String _$rdApiDioHash() => r'f8dde5db2055dc0c065d00c0a9b481bb3eba311f';

/// See also [rdApiDio].
@ProviderFor(rdApiDio)
final rdApiDioProvider = AutoDisposeProvider<Dio>.internal(
  rdApiDio,
  name: r'rdApiDioProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$rdApiDioHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RdApiDioRef = AutoDisposeProviderRef<Dio>;
String _$dioHash() => r'717986191b2f111ecb7d6f482581d493cf84b3bc';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [dio].
@ProviderFor(dio)
const dioProvider = DioFamily();

/// See also [dio].
class DioFamily extends Family<Dio> {
  /// See also [dio].
  const DioFamily();

  /// See also [dio].
  DioProvider call({
    String baseUrl = '',
  }) {
    return DioProvider(
      baseUrl: baseUrl,
    );
  }

  @override
  DioProvider getProviderOverride(
    covariant DioProvider provider,
  ) {
    return call(
      baseUrl: provider.baseUrl,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'dioProvider';
}

/// See also [dio].
class DioProvider extends AutoDisposeProvider<Dio> {
  /// See also [dio].
  DioProvider({
    String baseUrl = '',
  }) : this._internal(
          (ref) => dio(
            ref as DioRef,
            baseUrl: baseUrl,
          ),
          from: dioProvider,
          name: r'dioProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$dioHash,
          dependencies: DioFamily._dependencies,
          allTransitiveDependencies: DioFamily._allTransitiveDependencies,
          baseUrl: baseUrl,
        );

  DioProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.baseUrl,
  }) : super.internal();

  final String baseUrl;

  @override
  Override overrideWith(
    Dio Function(DioRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DioProvider._internal(
        (ref) => create(ref as DioRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        baseUrl: baseUrl,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<Dio> createElement() {
    return _DioProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DioProvider && other.baseUrl == baseUrl;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, baseUrl.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DioRef on AutoDisposeProviderRef<Dio> {
  /// The parameter `baseUrl` of this provider.
  String get baseUrl;
}

class _DioProviderElement extends AutoDisposeProviderElement<Dio> with DioRef {
  _DioProviderElement(super.provider);

  @override
  String get baseUrl => (origin as DioProvider).baseUrl;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
