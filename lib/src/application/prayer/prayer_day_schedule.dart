import 'package:timezone/timezone.dart' as tz;
import '../../domain/prayer/prayer_id.dart';

class PrayerDaySchedule {
  const PrayerDaySchedule({
    required this.date,
    required this.timeZoneName,
    required this.times,
  });

  final tz.TZDateTime date;
  final String timeZoneName;
  final Map<PrayerId, tz.TZDateTime> times;

  tz.TZDateTime timeOf(PrayerId prayer) => times[prayer]!;
}
