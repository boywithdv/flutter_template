// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_selector_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider for selecting the theme.

@ProviderFor(ThemeSelector)
final themeSelectorProvider = ThemeSelectorProvider._();

/// Provider for selecting the theme.
final class ThemeSelectorProvider
    extends $NotifierProvider<ThemeSelector, ThemeMode> {
  /// Provider for selecting the theme.
  ThemeSelectorProvider._()
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

/// Provider for selecting the theme.

abstract class _$ThemeSelector extends $Notifier<ThemeMode> {
  ThemeMode build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<ThemeMode, ThemeMode>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ThemeMode, ThemeMode>,
              ThemeMode,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
