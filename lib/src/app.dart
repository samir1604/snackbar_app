import 'package:flutter/material.dart';
import 'package:snackbar_ui/snackbar_ui.dart';

import 'core/service_locator.dart';
import 'features/auth/auth.dart';
import 'features/auth/presentation/pages/sign_in_page.dart';
import 'features/auth/presentation/view_models/login_view_model.dart';
import 'features/home/pages/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: LoginPage(),
    );
  }
}
