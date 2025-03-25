import 'package:flutter/material.dart';
import 'package:snackbar_ui/snackbar_ui.dart';

import 'core/core.dart';
import 'core/router/routers.dart';
import 'core/service_locator.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Chaplin',
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      routerConfig: Routers(getIt<SettingsServices>()).router,
    );
  }
}
