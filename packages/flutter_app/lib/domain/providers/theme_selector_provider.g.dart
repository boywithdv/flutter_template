// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_selector_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

/// Provider for selecting the theme.
@ProviderFor(ThemeSelector)
const themeSelectorProvider = ThemeSelectorProvider._();

/// Provider for selecting the theme.
final class ThemeSelectorProvider
    extends $NotifierProvider<ThemeSelector, ThemeMode> {
  /// Provider for selecting the theme.
  const ThemeSelectorProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'themeSelectorProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$themeSelectorHash();

  @$internal
  @override
  ThemeSelector create() => ThemeSelector();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ThemeMode value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ThemeMode>(value),
    );
  }
}

String _$themeSelectorHash() => r'48fc54b4fc30c87d31c8e505ec2b0bb0102b2b5b';

abstract class _$ThemeSelector extends $Notifier<ThemeMode> {
  ThemeMode build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<ThemeMode, ThemeMode>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ThemeMode, ThemeMode>,
              ThemeMode,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
