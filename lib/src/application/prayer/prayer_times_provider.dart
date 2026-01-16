import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../infrastructure/prayer/adhan_prayer_times_engine.dart';
import '../../presentation/features/location/location_config_provider.dart';
import 'prayer_calc_config_provider.dart';
import 'prayer_day_schedule.dart';

part 'prayer_times_provider.g.dart';

@riverpod
AdhanPrayerTimesEngine prayerTimesEngine(Ref ref) {
  return const AdhanPrayerTimesEngine();
}

@riverpod
PrayerDaySchedule prayerScheduleForDate(Ref ref, DateTime date) {
  final loc = ref.watch(locationConfigProvider);
  final cfg = ref.watch(prayerCalcConfigProvider);

  final engine = ref.watch(prayerTimesEngineProvider);
  return engine.generateForDate(
    location: loc,
    date: date,
    method: cfg.method,
    offsets: cfg.offsets,
  );
}

@riverpod
PrayerDaySchedule todayPrayerSchedule(Ref ref) {
  final now = DateTime.now();
  return ref.watch(
    prayerScheduleForDateProvider(DateTime(now.year, now.month, now.day)),
  );
}

@riverpod
PrayerDaySchedule tomorrowPrayerSchedule(Ref ref) {
  final now = DateTime.now();
  final tomorrow = DateTime(
    now.year,
    now.month,
    now.day,
  ).add(const Duration(days: 1));
  return ref.watch(prayerScheduleForDateProvider(tomorrow));
}
