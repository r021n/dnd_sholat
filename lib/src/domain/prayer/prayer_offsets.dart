import 'prayer_id.dart';

class PrayerOffsets {
  const PrayerOffsets({
    this.fajr = 0,
    this.dhuhr = 0,
    this.asr = 0,
    this.maghrib = 0,
    this.isha = 0,
  });

  final int fajr;
  final int dhuhr;
  final int asr;
  final int maghrib;
  final int isha;

  int forPrayer(PrayerId prayer) {
    return switch (prayer) {
      PrayerId.fajr => fajr,
      PrayerId.dhuhr => dhuhr,
      PrayerId.asr => asr,
      PrayerId.maghrib => maghrib,
      PrayerId.isha => isha,
    };
  }

  PrayerOffsets copyWith({
    int? fajr,
    int? dhuhr,
    int? asr,
    int? maghrib,
    int? isha,
  }) {
    return PrayerOffsets(
      fajr: fajr ?? this.fajr,
      dhuhr: dhuhr ?? this.dhuhr,
      asr: asr ?? this.asr,
      maghrib: maghrib ?? this.maghrib,
      isha: isha ?? this.isha,
    );
  }
}
