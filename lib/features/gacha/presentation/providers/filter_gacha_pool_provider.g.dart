// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_gacha_pool_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$filterGachaPoolHash() => r'628004ee41954ab2e1ced00416bdfc7d5efd598f';

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

/// See also [filterGachaPool].
@ProviderFor(filterGachaPool)
const filterGachaPoolProvider = FilterGachaPoolFamily();

/// See also [filterGachaPool].
class FilterGachaPoolFamily extends Family<AsyncValue<Option<GachaPool>>> {
  /// See also [filterGachaPool].
  const FilterGachaPoolFamily();

  /// See also [filterGachaPool].
  FilterGachaPoolProvider call({
    required String poolName,
  }) {
    return FilterGachaPoolProvider(
      poolName: poolName,
    );
  }

  @override
  FilterGachaPoolProvider getProviderOverride(
    covariant FilterGachaPoolProvider provider,
  ) {
    return call(
      poolName: provider.poolName,
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
  String? get name => r'filterGachaPoolProvider';
}

/// See also [filterGachaPool].
class FilterGachaPoolProvider
    extends AutoDisposeFutureProvider<Option<GachaPool>> {
  /// See also [filterGachaPool].
  FilterGachaPoolProvider({
    required String poolName,
  }) : this._internal(
          (ref) => filterGachaPool(
            ref as FilterGachaPoolRef,
            poolName: poolName,
          ),
          from: filterGachaPoolProvider,
          name: r'filterGachaPoolProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$filterGachaPoolHash,
          dependencies: FilterGachaPoolFamily._dependencies,
          allTransitiveDependencies:
              FilterGachaPoolFamily._allTransitiveDependencies,
          poolName: poolName,
        );

  FilterGachaPoolProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.poolName,
  }) : super.internal();

  final String poolName;

  @override
  Override overrideWith(
    FutureOr<Option<GachaPool>> Function(FilterGachaPoolRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FilterGachaPoolProvider._internal(
        (ref) => create(ref as FilterGachaPoolRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        poolName: poolName,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Option<GachaPool>> createElement() {
    return _FilterGachaPoolProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FilterGachaPoolProvider && other.poolName == poolName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, poolName.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FilterGachaPoolRef on AutoDisposeFutureProviderRef<Option<GachaPool>> {
  /// The parameter `poolName` of this provider.
  String get poolName;
}

class _FilterGachaPoolProviderElement
    extends AutoDisposeFutureProviderElement<Option<GachaPool>>
    with FilterGachaPoolRef {
  _FilterGachaPoolProviderElement(super.provider);

  @override
  String get poolName => (origin as FilterGachaPoolProvider).poolName;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
