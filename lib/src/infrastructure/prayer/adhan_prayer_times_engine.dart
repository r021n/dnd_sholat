import 'package:adhan_dart/adhan_dart.dart' as adhan;
import 'package:timezone/timezone.dart' as tz;

import '../../domain/location/app_location.dart';
import '../../domain/prayer/prayer_id.dart';
import '../../domain/prayer/prayer_method.dart';
import '../../domain/prayer/prayer_offsets.dart';
import '../../application/prayer/prayer_day_schedule.dart';

final class AdhanPrayerTimesEngine {
  const AdhanPrayerTimesEngine();

  PrayerDaySchedule generateForDate({
    required AppLocation location,
    required DateTime date,
    required PrayerMethod method,
    required PrayerOffsets offsets,
  }) {
    final tzLocation = _resolveTzLocation(location.timeZoneName);
    final day = tz.TZDateTime(tzLocation, date.year, date.month, date.day);

    final coordinates = adhan.Coordinates(
      location.latitude,
      location.longitude,
    );
    final params = _buildParams(method, offsets);

    final prayerTimes = adhan.PrayerTimes(
      date: date,
      coordinates: coordinates,
      calculationParameters: params,
      precision: true,
    );

    final times = <PrayerId, tz.TZDateTime>{
      PrayerId.fajr: tz.TZDateTime.from(prayerTimes.fajr, tzLocation),
      PrayerId.dhuhr: tz.TZDateTime.from(prayerTimes.dhuhr, tzLocation),
      PrayerId.asr: tz.TZDateTime.from(prayerTimes.asr, tzLocation),
      PrayerId.maghrib: tz.TZDateTime.from(prayerTimes.maghrib, tzLocation),
      PrayerId.isha: tz.TZDateTime.from(prayerTimes.isha, tzLocation),
    };

    return PrayerDaySchedule(
      date: day,
      timeZoneName: tzLocation.name,
      times: times,
    );
  }

  tz.Location _resolveTzLocation(String? timeZoneName) {
    if (timeZoneName == null || timeZoneName.trim().isEmpty) {
      return tz.local;
    }

    try {
      return tz.getLocation(timeZoneName);
    } catch (_) {
      return tz.local;
    }
  }

  adhan.CalculationParameters _buildParams(
    PrayerMethod method,
    PrayerOffsets offsets,
  ) {
    final adhan.CalculationParameters params = switch (method) {
      PrayerMethod.muslimWorldLeague =>
        adhan.CalculationMethodParameters.muslimWorldLeague(),
    };

    params.adjustments[adhan.Prayer.fajr] = offsets.fajr;
    params.adjustments[adhan.Prayer.dhuhr] = offsets.dhuhr;
    params.adjustments[adhan.Prayer.asr] = offsets.asr;
    params.adjustments[adhan.Prayer.maghrib] = offsets.maghrib;
    params.adjustments[adhan.Prayer.isha] = offsets.isha;

    return params;
  }
}
