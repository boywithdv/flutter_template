// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
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

/// Provider for counter increment operation
/// This demonstrates Mutation pattern

@ProviderFor(CounterNotifier)
const counterNotifier = CounterNotifierProvider._();

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
        name: r'counterNotifier',
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

String _$counterNotifierHash() => r'cc7ef7df482ffdc4ee7ba74e3cb49a7829a92ffb';

/// Provider for counter increment operation
/// This demonstrates Mutation pattern

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
