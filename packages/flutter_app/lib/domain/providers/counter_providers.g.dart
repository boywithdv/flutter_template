// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

/// Provider for CounterDataSource
/// This is a singleton provider to maintain state
@ProviderFor(counterDataSource)
const counterDataSourceProvider = CounterDataSourceProvider._();

/// Provider for CounterDataSource
/// This is a singleton provider to maintain state
final class CounterDataSourceProvider
    extends
        $FunctionalProvider<
          CounterDataSource,
          CounterDataSource,
          CounterDataSource
        >
    with $Provider<CounterDataSource> {
  /// Provider for CounterDataSource
  /// This is a singleton provider to maintain state
  const CounterDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'counterDataSourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$counterDataSourceHash();

  @$internal
  @override
  $ProviderElement<CounterDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CounterDataSource create(Ref ref) {
    return counterDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CounterDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CounterDataSource>(value),
    );
  }
}

String _$counterDataSourceHash() => r'5b8f0e97780bd017df4425bba4baf54db976642f';

/// Provider for CounterRepository
@ProviderFor(counterRepository)
const counterRepositoryProvider = CounterRepositoryProvider._();

/// Provider for CounterRepository
final class CounterRepositoryProvider
    extends
        $FunctionalProvider<
          CounterRepository,
          CounterRepository,
          CounterRepository
        >
    with $Provider<CounterRepository> {
  /// Provider for CounterRepository
  const CounterRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'counterRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$counterRepositoryHash();

  @$internal
  @override
  $ProviderElement<CounterRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CounterRepository create(Ref ref) {
    return counterRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CounterRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CounterRepository>(value),
    );
  }
}

String _$counterRepositoryHash() => r'eeb1e0032f9d97d3e47682445164f2a2684f3139';

/// FutureProvider for getting counter value
/// This demonstrates Query/Subscription pattern
@ProviderFor(counter)
const counterProvider = CounterProvider._();

/// FutureProvider for getting counter value
/// This demonstrates Query/Subscription pattern
final class CounterProvider
    extends $FunctionalProvider<AsyncValue<Counter>, Counter, FutureOr<Counter>>
    with $FutureModifier<Counter>, $FutureProvider<Counter> {
  /// FutureProvider for getting counter value
  /// This demonstrates Query/Subscription pattern
  const CounterProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'counterProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$counterHash();

  @$internal
  @override
  $FutureProviderElement<Counter> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Counter> create(Ref ref) {
    return counter(ref);
  }
}

String _$counterHash() => r'e950a5b93603e9bb13cf68ae27b27e3cb1845aa5';

/// Provider for counter increment operation
/// This demonstrates Mutation pattern
@ProviderFor(CounterNotifier)
const counterNotifierProvider = CounterNotifierProvider._();

/// Provider for counter increment operation
/// This demonstrates Mutation pattern
final class CounterNotifierProvider
    extends $AsyncNotifierProvider<CounterNotifier, Counter> {
  /// Provider for counter increment operation
  /// This demonstrates Mutation pattern
  const CounterNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'counterNotifierProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$counterNotifierHash();

  @$internal
  @override
  CounterNotifier create() => CounterNotifier();
}

String _$counterNotifierHash() => r'29f847ba27495d72e71ad466a1d74aec0bd34ef6';

abstract class _$CounterNotifier extends $AsyncNotifier<Counter> {
  FutureOr<Counter> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<Counter>, Counter>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<Counter>, Counter>,
              AsyncValue<Counter>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
