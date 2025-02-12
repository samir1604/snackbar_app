import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';


import 'package:snackbar_ui/snackbar_ui.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../core/contracts/use_case.dart';
import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/service_locator.dart';
import '../../auth.dart';
import '../widgets/login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) => context.responsive(
          GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            behavior: HitTestBehavior.opaque,
            child: Scaffold(
              body: Center(
                  child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(AppSizes.md),
                  child: LoginForm(
                      model: getIt<LoginViewModel>(),
                      onSuccess: () => _onSuccess(context)),
                ),
              )),
            ),
          ),
          {
            AppScreenSize.smallTablet: Scaffold(
                backgroundColor: AppColors.surfaceLight,
                body: SafeArea(
                  child: Center(
                    child: Container(
                      alignment: Alignment.center,
                      constraints: context
                          .responsive(const BoxConstraints(maxWidth: 400), {
                        AppScreenSize.tablet:
                            const BoxConstraints(maxWidth: 500),
                        AppScreenSize.laptop:
                            const BoxConstraints(maxWidth: 500),
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
                                  image: AssetImage(
                                      Assets.images.logoBlack.keyName),
                                  // Logo en la parte superior
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            LoginForm(
                              model: getIt<LoginViewModel>(),
                              onSuccess: () => _onSuccess(context),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ))
          });

  void _onSuccess(BuildContext context) {
    ///TODO: Handle Go Router
    debugPrint('Voy a otra ruta');

    final snackBar = SnackBar(
      /// need to set following properties for best effect of awesome_snackbar_content
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      content: AwesomeSnackbarContent(
        title: 'Ok!',
        message: 'Success login!',
        contentType: ContentType.success,
      ),
    );

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);

    context.showCustomSnackBar(title: '', message: '');
  }
}
