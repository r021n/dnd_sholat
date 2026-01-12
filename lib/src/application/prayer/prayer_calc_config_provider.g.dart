// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prayer_calc_config_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PrayerCalcConfig)
final prayerCalcConfigProvider = PrayerCalcConfigProvider._();

final class PrayerCalcConfigProvider
    extends $NotifierProvider<PrayerCalcConfig, PrayerCalcConfigModel> {
  PrayerCalcConfigProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'prayerCalcConfigProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$prayerCalcConfigHash();

  @$internal
  @override
  PrayerCalcConfig create() => PrayerCalcConfig();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PrayerCalcConfigModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PrayerCalcConfigModel>(value),
    );
  }
}

String _$prayerCalcConfigHash() => r'20e39ae6ac0f78f9451b502cbe1cdb2313a36a34';

abstract class _$PrayerCalcConfig extends $Notifier<PrayerCalcConfigModel> {
  PrayerCalcConfigModel build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<PrayerCalcConfigModel, PrayerCalcConfigModel>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<PrayerCalcConfigModel, PrayerCalcConfigModel>,
              PrayerCalcConfigModel,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
