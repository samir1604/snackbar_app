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

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          AppLabeledTextInput(
            labelText: 'Nombre de Usuario',
            controller: _usernameController,
            keyboardType: TextInputType.text,
          )
        ],
      ),
    );
  }
}
