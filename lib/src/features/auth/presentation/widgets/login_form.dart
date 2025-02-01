import 'package:flutter/material.dart';
import 'package:snackbar_ui/design_system/design_system.dart';

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
            assetPath: 'assets/images/logo-black.png',
            width: AppSizes.imageCarouselHeight,
            height: AppSizes.imageCarouselHeight,
            fit: BoxFit.contain,
          ),
          AppLabeledTextInput(
            labelText: 'Nombre de Usuario',
            controller: _usernameController,
            keyboardType: TextInputType.text,
            focusNode: _focusName,
            prefixIcon: AppIcon.person(),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Ingrese un nombre';
              }
              return null;
            },
            onSubmitted: (_) => _focusPass.requestFocus(),
          ),
          SizedBox(height: AppSizes.spaceBtwInputField),
          AppLabeledTextInput(
            labelText: 'Contraseña',
            controller: _passwordController,
            keyboardType: TextInputType.visiblePassword,
            obscureText: isPassVisible,
            focusNode: _focusPass,
            prefixIcon: AppIcon.password(),
            suffixIcon: GestureDetector(
              child: isPassVisible ? AppIcon.visible() : AppIcon.unVisible(),
              onTap: () => setState(() => isPassVisible = !isPassVisible),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Ingrese una contraseña';
              }
              return null;
            },
            onSubmitted: (_) => _loginButton.requestFocus(),
          ),
          Padding(
            padding: EdgeInsets.only(top: AppSizes.md, bottom: AppSizes.sm),
            child: AppButton(
              text: 'Iniciar',
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
