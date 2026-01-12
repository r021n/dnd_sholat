// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_config_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(LocationConfig)
final locationConfigProvider = LocationConfigProvider._();

final class LocationConfigProvider
    extends $NotifierProvider<LocationConfig, AppLocation> {
  LocationConfigProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'locationConfigProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$locationConfigHash();

  @$internal
  @override
  LocationConfig create() => LocationConfig();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppLocation value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppLocation>(value),
    );
  }
}

String _$locationConfigHash() => r'53f453395b70c57a6f38c4b261a8268099276c2f';

abstract class _$LocationConfig extends $Notifier<AppLocation> {
  AppLocation build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AppLocation, AppLocation>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AppLocation, AppLocation>,
              AppLocation,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
