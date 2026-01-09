import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/domain/providers/theme_selector_provider.dart';
import 'package:flutter_template/presentation/router/router.dart';
import 'package:flutter_template/presentation/theme/dark_theme.dart';
import 'package:flutter_template/presentation/theme/light_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'utils/providers/shared_preferences_provider.dart';

final appRouter = AppRouter();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final sp = await SharedPreferences.getInstance();

  runApp(
    ProviderScope(
      overrides: [sharedPreferencesProvider.overrideWithValue(sp)],
      child: const MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: 'Flutter Template',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ref.watch(themeSelectorProvider),
      routerConfig: appRouter.config(),
    );
  }
}
