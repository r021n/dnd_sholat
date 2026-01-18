import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../application/prayer/prayer_times_provider.dart';
import '../../../domain/prayer/prayer_id.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final today = ref.watch(todayPrayerScheduleProvider);
    final tomorrow = ref.watch(tomorrowPrayerScheduleProvider);

    String fmt(DateTime dt) =>
        '${dt.hour.toString().padLeft(2, '0')}:${dt.minute.toString().padLeft(2, '0')}';

    Widget scheduleView(String title, schedule) {
      return Card(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 8),
              Text('TZ: ${schedule.timeZoneName}'),
              const SizedBox(height: 8),
              Text('Fajr: ${fmt(schedule.timeOf(PrayerId.fajr))}'),
              Text('Dhuhr: ${fmt(schedule.timeOf(PrayerId.dhuhr))}'),
              Text('Asr: ${fmt(schedule.timeOf(PrayerId.asr))}'),
              Text('Maghrib: ${fmt(schedule.timeOf(PrayerId.maghrib))}'),
              Text('Isha: ${fmt(schedule.timeOf(PrayerId.isha))}'),
            ],
          ),
        ),
      );
    }

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        scheduleView('Today', today),
        scheduleView('Tomorrow', tomorrow),
      ],
    );
  }
}
