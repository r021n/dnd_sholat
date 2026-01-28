class PrayerDndSettings {
  const PrayerDndSettings({
    required this.durationMinutes,
    required this.preNotifyEnabled,
    required this.preNotifyMinutes,
    this.mode,
  });

  final int durationMinutes;
  final bool preNotifyEnabled;
  final int preNotifyMinutes;

  final String? mode;

  static const defaults = PrayerDndSettings(
    durationMinutes: 10,
    preNotifyEnabled: true,
    preNotifyMinutes: 10,
  );

  Map<String, dynamic> toJson() => {
    'durationMinutes': durationMinutes,
    'preNotifyEnabled': preNotifyEnabled,
    'preNotifyMinutes': preNotifyMinutes,
    'mode': mode,
  };

  static PrayerDndSettings fromJson(Map<String, dynamic> json) {
    return PrayerDndSettings(
      durationMinutes: (json['durationMinutes'] as num?)?.toInt() ?? 0,
      preNotifyEnabled: json['preNotifyEnabled'] as bool? ?? true,
      preNotifyMinutes: (json['preNotifyMinutes'] as num?)?.toInt() ?? 0,
      mode: json['mode'] as String?,
    );
  }
}
