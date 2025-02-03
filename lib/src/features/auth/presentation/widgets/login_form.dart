import 'package:flutter/material.dart';

import 'package:snackbar_ui/design_system/design_system.dart';
import 'package:snackbar_ui/utils/app_responsive_extensions.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../common/common.dart';
import '../validators/login_validators.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key, this.onSubmit});

  final Function(String, String)? onSubmit;

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _focusName = FocusNode();
  final _focusPass = FocusNode();
  final _loginButton = FocusNode();
  bool isPassVisible = false;

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    _focusName.dispose();
    _focusPass.dispose();
    _loginButton.dispose();
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
            onSubmitted: (_) => _loginButton.requestFocus(),
          ),
          Padding(
            padding: EdgeInsets.only(top: AppSizes.md, bottom: AppSizes.sm),
            child: AppButton(
              text: TextStrings.buttonLogin,
              focusNode: _loginButton,
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  setUnFocus();

                  ///TODO: Handle submit
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
