// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$counterDataSourceHash() => r'5b8f0e97780bd017df4425bba4baf54db976642f';

/// Provider for CounterDataSource
/// This is a singleton provider to maintain state
///
/// Copied from [counterDataSource].
@ProviderFor(counterDataSource)
final counterDataSourceProvider = Provider<CounterDataSource>.internal(
  counterDataSource,
  name: r'counterDataSourceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$counterDataSourceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CounterDataSourceRef = ProviderRef<CounterDataSource>;
String _$counterRepositoryHash() => r'eeb1e0032f9d97d3e47682445164f2a2684f3139';

/// Provider for CounterRepository
///
/// Copied from [counterRepository].
@ProviderFor(counterRepository)
final counterRepositoryProvider = Provider<CounterRepository>.internal(
  counterRepository,
  name: r'counterRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$counterRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CounterRepositoryRef = ProviderRef<CounterRepository>;
String _$counterHash() => r'e950a5b93603e9bb13cf68ae27b27e3cb1845aa5';

/// FutureProvider for getting counter value
/// This demonstrates Query/Subscription pattern
///
/// Copied from [counter].
@ProviderFor(counter)
final counterProvider = AutoDisposeFutureProvider<Counter>.internal(
  counter,
  name: r'counterProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$counterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CounterRef = AutoDisposeFutureProviderRef<Counter>;
String _$counterNotifierHash() => r'29f847ba27495d72e71ad466a1d74aec0bd34ef6';

/// Provider for counter increment operation
/// This demonstrates Mutation pattern
///
/// Copied from [CounterNotifier].
@ProviderFor(CounterNotifier)
final counterNotifierProvider =
    AsyncNotifierProvider<CounterNotifier, Counter>.internal(
      CounterNotifier.new,
      name: r'counterNotifierProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$counterNotifierHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$CounterNotifier = AsyncNotifier<Counter>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
