import 'package:flutter/material.dart';
import 'package:snackbar_ui/design_system/design_system.dart';
import 'package:snackbar_ui/utils/app_responsive_extensions.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../common/common.dart';
import '../../../../core/core.dart';
import '../../auth.dart';
import '../models/login_request.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    super.key,
    required this.model,
    this.onSubmit,
  });

  final ValueChanged<LoginRequest>? onSubmit;
  final ValueNotifier<LoginState> model;

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _focusName = FocusNode();
  final _focusPass = FocusNode();
  final _focusLoginButton = FocusNode();
  bool isHidden = true;

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    _focusName.dispose();
    _focusPass.dispose();
    _focusLoginButton.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppImageAsset(
            assetPath: Assets.images.logoBlack.keyName,
            width: context.blockSizeHorizontal(60),
            fit: BoxFit.contain,
          ),
          AppLabeledTextInput(
            labelText: TextStrings.labelUsername,
            controller: _usernameController,
            keyboardType: TextInputType.text,
            focusNode: _focusName,
            prefixIcon: AppIcon.person(),
            validator: LoginValidators.userValidator,
            onSubmitted: (_) => _focusPass.requestFocus(),
          ),
          SizedBox(height: AppSizes.spaceBtwInputField),
          AppLabeledTextInput(
            labelText: TextStrings.labelPassword,
            controller: _passwordController,
            keyboardType: TextInputType.visiblePassword,
            obscureText: isHidden,
            focusNode: _focusPass,
            prefixIcon: AppIcon.password(),
            suffixIcon: GestureDetector(
              child: isHidden ? AppIcon.visible() : AppIcon.unVisible(),
              onTap: () => setState(() => isHidden = !isHidden),
            ),
            validator: LoginValidators.passValidator,
            onSubmitted: (_) => _focusLoginButton.requestFocus(),
          ),
          Padding(
            padding: EdgeInsets.only(top: AppSizes.md, bottom: AppSizes.sm),
            child: ValueListenableBuilder<LoginState>(
              valueListenable: widget.model,
              builder: (_, model, __) => AppButton(
                isLoading: model is LoadingState,
                text: TextStrings.buttonLogin,
                focusNode: _focusLoginButton,
                onPressed: () async {
                  if (_formKey.currentState!.validate() &&
                      widget.onSubmit != null) {
                    widget.onSubmit!(LoginRequest(
                      _usernameController.text,
                      _passwordController.text,
                    ));
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _renderButton(BuildContext context, LoginState value, Widget? child) {
    debugPrint(value.toString());
    bool isLoading = false;

    if (value is LoadingState) isLoading = true;
    if (value is SuccessState) {
      isLoading = false;
      //WidgetsBinding.instance.addPostFrameCallback((_) => widget.onSuccess!());
    }
    if (value is FailureState) {
      /*
      isLoading = false;
      WidgetsBinding.instance
          .addPostFrameCallback((_) => context.showCustomSnackBar(
                title: value.title,
                message: value.message,
                type: ContentType.failure,
              ));

       */
    }
    return _loginButton(isLoading);
  }

  Widget _loginButton(bool isLoading) {
    debugPrint(isLoading.toString());

    return AppButton(
      isLoading: isLoading,
      text: TextStrings.buttonLogin,
      focusNode: _focusLoginButton,
      onPressed: () async {
        if (_formKey.currentState!.validate() && widget.onSubmit != null) {
          widget.onSubmit!(LoginRequest(
            _usernameController.text,
            _passwordController.text,
          ));
        }
      },
    );
  }
}
