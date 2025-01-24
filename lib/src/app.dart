import 'package:flutter/material.dart';
import 'package:snackbar_ui/snackbar_ui.dart';

import 'core/service_locator.dart';
import 'features/home/pages/home_page.dart';
import 'features/sign_in/presentation/pages/sign_in_page.dart';
import 'features/sign_in/presentation/view_models/sign_in_view_model.dart';

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
      home: LoginPage(viewModel: getIt<SignInViewModel>(),),
    );
  }
}
