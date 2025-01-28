import 'package:flutter/material.dart';
import 'package:snackbar_ui/snackbar_ui.dart';

import '../widgets/login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) => context.responsive(
      Scaffold(
        body: Center(
            child: Padding(
          padding: EdgeInsets.all(AppSizes.md),
          child: LoginForm(),
        )),
      ),
      md: Scaffold(
        body: Center(
          child: Container(
            constraints: context.responsive(const BoxConstraints(maxWidth: 400),
                lg: const BoxConstraints(maxWidth: 500),
                xl: const BoxConstraints(maxWidth: 600)),
            padding: EdgeInsets.all(AppSizes.md),
            child: LoginForm(),
          ),
        ),
      ));
}
