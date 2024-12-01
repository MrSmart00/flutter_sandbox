// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$feedHash() => r'7e259506dc2f67eaac1453b9b9c90d4e53a854c4';

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

/// See also [feed].
@ProviderFor(feed)
const feedProvider = FeedFamily();

/// See also [feed].
class FeedFamily extends Family<AsyncValue<Feed>> {
  /// See also [feed].
  const FeedFamily();

  /// See also [feed].
  FeedProvider call({
    required INetworkClient client,
  }) {
    return FeedProvider(
      client: client,
    );
  }

  @override
  FeedProvider getProviderOverride(
    covariant FeedProvider provider,
  ) {
    return call(
      client: provider.client,
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
  String? get name => r'feedProvider';
}

/// See also [feed].
class FeedProvider extends FutureProvider<Feed> {
  /// See also [feed].
  FeedProvider({
    required INetworkClient client,
  }) : this._internal(
          (ref) => feed(
            ref as FeedRef,
            client: client,
          ),
          from: feedProvider,
          name: r'feedProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$feedHash,
          dependencies: FeedFamily._dependencies,
          allTransitiveDependencies: FeedFamily._allTransitiveDependencies,
          client: client,
        );

  FeedProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.client,
  }) : super.internal();

  final INetworkClient client;

  @override
  Override overrideWith(
    FutureOr<Feed> Function(FeedRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FeedProvider._internal(
        (ref) => create(ref as FeedRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        client: client,
      ),
    );
  }

  @override
  FutureProviderElement<Feed> createElement() {
    return _FeedProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FeedProvider && other.client == client;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, client.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin FeedRef on FutureProviderRef<Feed> {
  /// The parameter `client` of this provider.
  INetworkClient get client;
}

class _FeedProviderElement extends FutureProviderElement<Feed> with FeedRef {
  _FeedProviderElement(super.provider);

  @override
  INetworkClient get client => (origin as FeedProvider).client;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
