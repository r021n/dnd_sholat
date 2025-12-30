import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'src/infrastructure/timezone/timezone_bootstrap.dart';
import 'src/presentation/app/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await TimezoneBootstrap.init();

  runApp(const ProviderScope(child: App()));
}
