// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plant_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$plantsRepositoryHash() => r'6c0da64f7395f1382b7c6dee465b619219be3878';

/// See also [plantsRepository].
@ProviderFor(plantsRepository)
final plantsRepositoryProvider = AutoDisposeProvider<PlantsRepository>.internal(
  plantsRepository,
  name: r'plantsRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$plantsRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PlantsRepositoryRef = AutoDisposeProviderRef<PlantsRepository>;
String _$plantListStreamHash() => r'c75b8b221d48c977d209b52f9edfa31787f5e2e7';

/// See also [plantListStream].
@ProviderFor(plantListStream)
final plantListStreamProvider = AutoDisposeStreamProvider<List<Plant>>.internal(
  plantListStream,
  name: r'plantListStreamProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$plantListStreamHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PlantListStreamRef = AutoDisposeStreamProviderRef<List<Plant>>;
String _$plantListFutureHash() => r'd4ea1afbead075d143d2d5e3e94de37c26d1e582';

/// See also [plantListFuture].
@ProviderFor(plantListFuture)
final plantListFutureProvider = AutoDisposeFutureProvider<List<Plant>>.internal(
  plantListFuture,
  name: r'plantListFutureProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$plantListFutureHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PlantListFutureRef = AutoDisposeFutureProviderRef<List<Plant>>;
String _$plantHash() => r'263d4d06613e83aba5b12d8317c3e416de85e5e9';

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

/// See also [plant].
@ProviderFor(plant)
const plantProvider = PlantFamily();

/// See also [plant].
class PlantFamily extends Family<AsyncValue<Plant?>> {
  /// See also [plant].
  const PlantFamily();

  /// See also [plant].
  PlantProvider call(
    String id,
  ) {
    return PlantProvider(
      id,
    );
  }

  @override
  PlantProvider getProviderOverride(
    covariant PlantProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'plantProvider';
}

/// See also [plant].
class PlantProvider extends AutoDisposeStreamProvider<Plant?> {
  /// See also [plant].
  PlantProvider(
    String id,
  ) : this._internal(
          (ref) => plant(
            ref as PlantRef,
            id,
          ),
          from: plantProvider,
          name: r'plantProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$plantHash,
          dependencies: PlantFamily._dependencies,
          allTransitiveDependencies: PlantFamily._allTransitiveDependencies,
          id: id,
        );

  PlantProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    Stream<Plant?> Function(PlantRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PlantProvider._internal(
        (ref) => create(ref as PlantRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<Plant?> createElement() {
    return _PlantProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PlantProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PlantRef on AutoDisposeStreamProviderRef<Plant?> {
  /// The parameter `id` of this provider.
  String get id;
}

class _PlantProviderElement extends AutoDisposeStreamProviderElement<Plant?>
    with PlantRef {
  _PlantProviderElement(super.provider);

  @override
  String get id => (origin as PlantProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
