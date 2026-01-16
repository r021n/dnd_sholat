// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prayer_times_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(prayerTimesEngine)
final prayerTimesEngineProvider = PrayerTimesEngineProvider._();

final class PrayerTimesEngineProvider
    extends
        $FunctionalProvider<
          AdhanPrayerTimesEngine,
          AdhanPrayerTimesEngine,
          AdhanPrayerTimesEngine
        >
    with $Provider<AdhanPrayerTimesEngine> {
  PrayerTimesEngineProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'prayerTimesEngineProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$prayerTimesEngineHash();

  @$internal
  @override
  $ProviderElement<AdhanPrayerTimesEngine> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AdhanPrayerTimesEngine create(Ref ref) {
    return prayerTimesEngine(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AdhanPrayerTimesEngine value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AdhanPrayerTimesEngine>(value),
    );
  }
}

String _$prayerTimesEngineHash() => r'8e0aebe4b4a706bbee1576804242667bb8e99d55';

@ProviderFor(prayerScheduleForDate)
final prayerScheduleForDateProvider = PrayerScheduleForDateFamily._();

final class PrayerScheduleForDateProvider
    extends
        $FunctionalProvider<
          PrayerDaySchedule,
          PrayerDaySchedule,
          PrayerDaySchedule
        >
    with $Provider<PrayerDaySchedule> {
  PrayerScheduleForDateProvider._({
    required PrayerScheduleForDateFamily super.from,
    required DateTime super.argument,
  }) : super(
         retry: null,
         name: r'prayerScheduleForDateProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$prayerScheduleForDateHash();

  @override
  String toString() {
    return r'prayerScheduleForDateProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<PrayerDaySchedule> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PrayerDaySchedule create(Ref ref) {
    final argument = this.argument as DateTime;
    return prayerScheduleForDate(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PrayerDaySchedule value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PrayerDaySchedule>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is PrayerScheduleForDateProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$prayerScheduleForDateHash() =>
    r'b0e316f35366bae0972146a5a716d2562206f2ea';

final class PrayerScheduleForDateFamily extends $Family
    with $FunctionalFamilyOverride<PrayerDaySchedule, DateTime> {
  PrayerScheduleForDateFamily._()
    : super(
        retry: null,
        name: r'prayerScheduleForDateProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  PrayerScheduleForDateProvider call(DateTime date) =>
      PrayerScheduleForDateProvider._(argument: date, from: this);

  @override
  String toString() => r'prayerScheduleForDateProvider';
}

@ProviderFor(todayPrayerSchedule)
final todayPrayerScheduleProvider = TodayPrayerScheduleProvider._();

final class TodayPrayerScheduleProvider
    extends
        $FunctionalProvider<
          PrayerDaySchedule,
          PrayerDaySchedule,
          PrayerDaySchedule
        >
    with $Provider<PrayerDaySchedule> {
  TodayPrayerScheduleProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'todayPrayerScheduleProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$todayPrayerScheduleHash();

  @$internal
  @override
  $ProviderElement<PrayerDaySchedule> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PrayerDaySchedule create(Ref ref) {
    return todayPrayerSchedule(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PrayerDaySchedule value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PrayerDaySchedule>(value),
    );
  }
}

String _$todayPrayerScheduleHash() =>
    r'1886bafb862da73e745f79fb911aa196d5a12e8c';

@ProviderFor(tomorrowPrayerSchedule)
final tomorrowPrayerScheduleProvider = TomorrowPrayerScheduleProvider._();

final class TomorrowPrayerScheduleProvider
    extends
        $FunctionalProvider<
          PrayerDaySchedule,
          PrayerDaySchedule,
          PrayerDaySchedule
        >
    with $Provider<PrayerDaySchedule> {
  TomorrowPrayerScheduleProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'tomorrowPrayerScheduleProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$tomorrowPrayerScheduleHash();

  @$internal
  @override
  $ProviderElement<PrayerDaySchedule> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PrayerDaySchedule create(Ref ref) {
    return tomorrowPrayerSchedule(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PrayerDaySchedule value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PrayerDaySchedule>(value),
    );
  }
}

String _$tomorrowPrayerScheduleHash() =>
    r'3c3f0f6bdb49784b27b5c6fdd42cff7b9dc4a245';
