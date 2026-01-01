import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'location_config_provider.dart';

class LocationSettingsPage extends ConsumerWidget {
  const LocationSettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = ref.watch(locationConfigProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Location Settings')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text('Source: ${loc.source.name}'),
          const SizedBox(height: 8),
          Text('Lat: ${loc.latitude}'),
          Text('Lng: ${loc.longitude}'),
          if (loc.label != null) Text('Label: ${loc.label}'),
          const SizedBox(height: 16),

          const Text('Pilih sumber lokasi'),
          const SizedBox(height: 8),

          FilledButton(
            onPressed: () =>
                ref.read(locationConfigProvider.notifier).setGpsPlaceholder(),
            child: const Text('Gunakan GPS (Placeholder)'),
          ),
          const SizedBox(height: 8),
          FilledButton(
            onPressed: () => ref
                .read(locationConfigProvider.notifier)
                .setManual(
                  lat: -6.2,
                  lng: 106.816666,
                  label: 'Jakarta (Manual)',
                ),
            child: const Text('Set Manual (Jakarta)'),
          ),
        ],
      ),
    );
  }
}
