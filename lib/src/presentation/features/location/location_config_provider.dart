import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/location/app_location.dart';
import '../../../domain/location/location_source.dart';

part 'location_config_provider.g.dart';

@Riverpod(keepAlive: true)
class LocationConfig extends _$LocationConfig {
  @override
  AppLocation build() {
    return AppLocation(
      source: LocationSource.manual,
      latitude: -6.200000,
      longitude: 106.816666,
      label: 'Default (Jakarta)',
    );
  }

  void setManual({required double lat, required double lng, String? label}) {
    state = state.copyWith(
      source: LocationSource.manual,
      latitude: lat,
      longitude: lng,
      label: label ?? 'Manual',
      updatedAt: DateTime.now(),
    );
  }

  void setGpsPlaceholder() {
    state = state.copyWith(
      source: LocationSource.gps,
      label: 'GPS (Pending Fetch)',
      updatedAt: DateTime.now(),
    );
  }
}
