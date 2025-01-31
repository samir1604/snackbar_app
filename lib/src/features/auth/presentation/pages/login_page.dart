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
      {
        AppScreenSize.smallTablet: Scaffold(
          backgroundColor: AppColors.surfaceLight,
            body: SafeArea(
              child: Center(
                child: Container(
                  alignment: Alignment.center,
                  constraints:
                  context.responsive(const BoxConstraints(maxWidth: 400), {
                    AppScreenSize.tablet: const BoxConstraints(maxWidth: 500),
                    AppScreenSize.laptop: const BoxConstraints(maxWidth: 500),
                  }),
                  child: Padding(
                    padding: EdgeInsets.all(AppSizes.md),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 30),
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blueAccent,
                            image: DecorationImage(
                              image: AssetImage('assets/images/header-image.jpeg'), // Logo en la parte superior
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        LoginForm(),
                      ],
                    ),
                  ),
                ),
              ),
            ))
      });
}
