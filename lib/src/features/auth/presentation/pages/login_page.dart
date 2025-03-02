import 'package:flutter/material.dart';

import 'package:snackbar_ui/snackbar_ui.dart';

import '../../../../../gen/assets.gen.dart';

import '../../../../common/common.dart';
import '../../../../core/core.dart';
import '../../../../core/service_locator.dart';
import '../../auth.dart';
import '../models/login_request.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final model = getIt<LoginViewModel>();

  @override
  void initState() {
    super.initState();
    model.state.addListener(_listener);
  }

  void _listener() {
    debugPrint('Cambiando el estado: ${model.state.value.toString()}');
    if (model.state.value is SuccessState<bool>) {
      debugPrint('Voy a cambiar de pagina');
    }

    if (model.state.value is FailureState) {
      final state = model.state.value as FailureState;
      context.showToast(state.title, state.message, ToastType.error, state.errors);
      /*
      context.showCustomSnackBar(
        title: state.title,
        message: state.message,
        errors: state.errors,
        type: ContentType.failure,
      );

       */
    }
  }

  @override
  void dispose() {
    model.state.removeListener(_listener);
    model.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) =>
      context.responsive(
          GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            behavior: HitTestBehavior.opaque,
            child: Scaffold(
              body: Center(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.all(AppSizes.md),
                      child: LoginForm(model: model.state, onSubmit: _onSubmit),
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
                              model: model.state,
                              onSubmit: _onSubmit,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ))
          });

  Future<void> _onSubmit(LoginRequest request) async {
    FocusManager.instance.primaryFocus?.unfocus();
    await model.login(request.username, request.password);
  }
}
