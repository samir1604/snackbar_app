import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:snackbar_ui/snackbar_ui.dart';

import '../../../../../gen/assets.gen.dart';

import '../../../../common/common.dart';
import '../../../../core/core.dart';
import '../../../../core/router/router_constants.dart';
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

  @override
  void dispose() {
    model.state.removeListener(_listener);
    model.dispose();
    super.dispose();
  }

  void _listener() {
    if (model.state.value is SuccessState<bool>) {
      debugPrint('Cambiando de direccion');
      context.replaceNamed(RoutesName.homeName);
    }

    if (model.state.value is FailureState) {
      final state = model.state.value as FailureState;
      context.showToast(
        state.title,
        state.message,
        ToastType.error,
        state.errors,
      );
    }
  }

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
    await model.login(
        username: request.username,
        password: request.password,
        keepMeLoggedIn: request.keepMeLoggedIn);
  }
}
