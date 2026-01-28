import 'prayer_id.dart';

class PrayerToggles {
  const PrayerToggles(this.enabled);

  final Map<PrayerId, bool> enabled;

  factory PrayerToggles.defaults() => PrayerToggles({
    PrayerId.fajr: true,
    PrayerId.dhuhr: true,
    PrayerId.asr: true,
    PrayerId.maghrib: true,
    PrayerId.isha: true,
  });

  bool isEnabled(PrayerId id) => enabled[id] ?? false;

  PrayerToggles set(PrayerId id, bool value) {
    final next = Map<PrayerId, bool>.from(enabled);
    next[id] = value;
    return PrayerToggles(next);
  }

  Map<String, dynamic> toJson() => {
    for (final e in enabled.entries) e.key.name: e.value,
  };

  static PrayerToggles fromJson(Map<String, dynamic> json) {
    final map = <PrayerId, bool>{};
    for (final id in PrayerId.values) {
      map[id] = json[id.name] as bool? ?? true;
    }
    return PrayerToggles(map);
  }
}
