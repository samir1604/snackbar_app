import 'package:flutter/material.dart';
import 'package:snackbar_ui/design_system/design_system.dart';
import 'package:snackbar_ui/utils/app_device_extensions.dart';

import 'package:snackbar_ui/utils/app_responsive_extensions.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../common/common.dart';
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
  bool _isHidden = true;
  bool _keepMeInside = false;

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
            obscureText: _isHidden,
            focusNode: _focusPass,
            prefixIcon: AppIcon.password(),
            suffixIcon: GestureDetector(
              child: _isHidden ? AppIcon.visible() : AppIcon.unVisible(),
              onTap: () => setState(() => _isHidden = !_isHidden),
            ),
            validator: LoginValidators.passValidator,
            onSubmitted: (_) => _focusLoginButton.requestFocus(),
          ),
          SizedBox(height: AppSizes.spaceBtwInputField),
          AppCheckboxWithLabel(
            label: TextStrings.keepMeSignIn,
            style: Styles.checkBoxText,
            value: _keepMeInside,
            onChanged: (bool? value) => setState(() {
              _keepMeInside = value ?? false;
            }),
          ),
          //Generate Login Button
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
                      _keepMeInside,
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
}
