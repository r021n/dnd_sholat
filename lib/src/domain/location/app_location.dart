import './location_source.dart';

class AppLocation {
  AppLocation({
    required this.source,
    required this.latitude,
    required this.longitude,
    this.label,
    this.timeZoneName,
    DateTime? updatedAt,
  }) : updatedAt = updatedAt ?? DateTime.now();

  final LocationSource source;
  final double latitude;
  final double longitude;

  final String? label;
  final String? timeZoneName;
  final DateTime updatedAt;

  AppLocation copyWith({
    LocationSource? source,
    double? latitude,
    double? longitude,
    String? label,
    String? timeZoneName,
    DateTime? updatedAt,
  }) {
    return AppLocation(
      source: source ?? this.source,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      label: label ?? this.label,
      timeZoneName: timeZoneName ?? this.timeZoneName,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
