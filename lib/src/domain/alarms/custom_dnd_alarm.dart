class CustomDndAlarm {
  const CustomDndAlarm({
    required this.id,
    required this.hour,
    required this.minute,
    required this.durationMinutes,
    required this.enabled,
    this.label,
  });

  final String id;
  final int hour;
  final int minute;
  final int durationMinutes;
  final bool enabled;
  final String? label;

  Map<String, dynamic> toJson() => {
    'id': id,
    'hour': hour,
    'minute': minute,
    'durationMinutes': durationMinutes,
    'enabled': enabled,
    'label': label,
  };

  static CustomDndAlarm fromJson(Map<String, dynamic> json) {
    return CustomDndAlarm(
      id: json['id'] as String,
      hour: (json['hour'] as num).toInt(),
      minute: (json['minute'] as num).toInt(),
      durationMinutes: (json['durationMinutes'] as num).toInt(),
      enabled: json['enabled'] as bool? ?? true,
      label: json['label'] as String?,
    );
  }
}
