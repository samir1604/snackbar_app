import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';

import 'package:snackbar_ui/design_system/design_system.dart';
import 'package:snackbar_ui/utils/app_responsive_extensions.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../common/common.dart';
import '../../../../core/core.dart';
import '../../auth.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key, required this.model, this.onSuccess});

  final VoidCallback? onSuccess;

  final LoginViewModel model;

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
  bool isPassVisible = false;

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    _focusName.dispose();
    _focusPass.dispose();
    _focusLoginButton.dispose();
    widget.model.dispose();
    super.dispose();
  }

  void setUnFocus() => FocusScope.of(context).unfocus();

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
            obscureText: isPassVisible,
            focusNode: _focusPass,
            prefixIcon: AppIcon.password(),
            suffixIcon: GestureDetector(
              child: isPassVisible ? AppIcon.visible() : AppIcon.unVisible(),
              onTap: () => setState(() => isPassVisible = !isPassVisible),
            ),
            validator: LoginValidators.passValidator,
            onSubmitted: (_) => _focusLoginButton.requestFocus(),
          ),
          Padding(
            padding: EdgeInsets.only(top: AppSizes.md, bottom: AppSizes.sm),
            child: ValueListenableBuilder<LoginState>(
              valueListenable: widget.model.state,
              builder: _renderButton,
            ),
          ),
        ],
      ),
    );
  }

  Widget _renderButton(BuildContext context, LoginState value, Widget? child) {
    debugPrint(value.toString());
    if (value is Loading) return _loginButton(true);
    if (value is Ok && widget.onSuccess != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) => widget.onSuccess!());
    }
    if (value is Failure) {
      WidgetsBinding.instance
          .addPostFrameCallback((_) => context.showCustomSnackBar(
                title: value.title,
                message: value.message,
                type: ContentType.failure,
              ));
    }
    return _loginButton();
  }

  Widget _loginButton([bool isLoading = false]) {
    debugPrint(isLoading.toString());
    return AppButton(
      isLoading: isLoading,
      text: TextStrings.buttonLogin,
      focusNode: _focusLoginButton,
      onPressed: () async {
        if (_formKey.currentState!.validate()) {
          setUnFocus();
          await widget.model.login(
            _usernameController.text,
            _passwordController.text,
          );

          ///TODO: Handle submit
        }
      },
    );
  }
}
