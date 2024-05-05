// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_gacha_stats_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$filterGachaStatsHash() => r'1f6162a04eca5ced6e40bda226dcddecb1f4c9b2';

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

abstract class _$FilterGachaStats
    extends BuildlessAutoDisposeNotifier<AsyncValue<GachaStats>> {
  late final String? pool;

  AsyncValue<GachaStats> build({
    String? pool,
  });
}

/// See also [FilterGachaStats].
@ProviderFor(FilterGachaStats)
const filterGachaStatsProvider = FilterGachaStatsFamily();

/// See also [FilterGachaStats].
class FilterGachaStatsFamily extends Family<AsyncValue<GachaStats>> {
  /// See also [FilterGachaStats].
  const FilterGachaStatsFamily();

  /// See also [FilterGachaStats].
  FilterGachaStatsProvider call({
    String? pool,
  }) {
    return FilterGachaStatsProvider(
      pool: pool,
    );
  }

  @override
  FilterGachaStatsProvider getProviderOverride(
    covariant FilterGachaStatsProvider provider,
  ) {
    return call(
      pool: provider.pool,
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
  String? get name => r'filterGachaStatsProvider';
}

/// See also [FilterGachaStats].
class FilterGachaStatsProvider extends AutoDisposeNotifierProviderImpl<
    FilterGachaStats, AsyncValue<GachaStats>> {
  /// See also [FilterGachaStats].
  FilterGachaStatsProvider({
    String? pool,
  }) : this._internal(
          () => FilterGachaStats()..pool = pool,
          from: filterGachaStatsProvider,
          name: r'filterGachaStatsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$filterGachaStatsHash,
          dependencies: FilterGachaStatsFamily._dependencies,
          allTransitiveDependencies:
              FilterGachaStatsFamily._allTransitiveDependencies,
          pool: pool,
        );

  FilterGachaStatsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.pool,
  }) : super.internal();

  final String? pool;

  @override
  AsyncValue<GachaStats> runNotifierBuild(
    covariant FilterGachaStats notifier,
  ) {
    return notifier.build(
      pool: pool,
    );
  }

  @override
  Override overrideWith(FilterGachaStats Function() create) {
    return ProviderOverride(
      origin: this,
      override: FilterGachaStatsProvider._internal(
        () => create()..pool = pool,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        pool: pool,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<FilterGachaStats, AsyncValue<GachaStats>>
      createElement() {
    return _FilterGachaStatsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FilterGachaStatsProvider && other.pool == pool;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, pool.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FilterGachaStatsRef
    on AutoDisposeNotifierProviderRef<AsyncValue<GachaStats>> {
  /// The parameter `pool` of this provider.
  String? get pool;
}

class _FilterGachaStatsProviderElement
    extends AutoDisposeNotifierProviderElement<FilterGachaStats,
        AsyncValue<GachaStats>> with FilterGachaStatsRef {
  _FilterGachaStatsProviderElement(super.provider);

  @override
  String? get pool => (origin as FilterGachaStatsProvider).pool;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
