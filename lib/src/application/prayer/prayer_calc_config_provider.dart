import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/prayer/prayer_id.dart';
import '../../domain/prayer/prayer_method.dart';
import '../../domain/prayer/prayer_offsets.dart';

part 'prayer_calc_config_provider.g.dart';

class PrayerCalcConfigModel {
  const PrayerCalcConfigModel({required this.method, required this.offsets});

  final PrayerMethod method;
  final PrayerOffsets offsets;

  PrayerCalcConfigModel copyWith({
    PrayerMethod? method,
    PrayerOffsets? offsets,
  }) {
    return PrayerCalcConfigModel(
      method: method ?? this.method,
      offsets: offsets ?? this.offsets,
    );
  }
}

@Riverpod(keepAlive: true)
class PrayerCalcConfig extends _$PrayerCalcConfig {
  @override
  PrayerCalcConfigModel build() {
    return const PrayerCalcConfigModel(
      method: PrayerMethod.muslimWorldLeague,
      offsets: PrayerOffsets(),
    );
  }

  void setMethod(PrayerMethod method) {
    state = state.copyWith(method: method);
  }

  void setOffset(PrayerId prayer, int minutes) {
    final o = state.offsets;
    final newOffsets = switch (prayer) {
      PrayerId.fajr => o.copyWith(fajr: minutes),
      PrayerId.dhuhr => o.copyWith(dhuhr: minutes),
      PrayerId.asr => o.copyWith(asr: minutes),
      PrayerId.maghrib => o.copyWith(maghrib: minutes),
      PrayerId.isha => o.copyWith(isha: minutes),
    };

    state = state.copyWith(offsets: newOffsets);
  }
}
