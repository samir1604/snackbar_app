import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:snackbar_ui/utils/app_text_theme_extensions.dart';

import '../../../../core/service_locator.dart';
import '../states/login_state.dart';
import '../view_models/login_view_model.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({
    super.key,
    required this.viewModel,
  });

  final LoginViewModel viewModel;

  @override
  State<SignInPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<SignInPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  //bool _isLoading = false;
  late final LoginViewModel model;

  @override
  void initState() {
    super.initState();
    model = getIt.get<LoginViewModel>();
  }

  void _login() async {

    if (_formKey.currentState!.validate()) {
      widget.viewModel.login(
        _usernameController.text,
        _passwordController.text,
      );

      /*
      setState(() {
        _isLoading = true;
      });

      // Simula un retraso para la autenticación (reemplaza con tu lógica de autenticación)
      await Future.delayed(Duration(seconds: 2));

      setState(() {
        _isLoading = false;
      });

      // Aquí puedes manejar la respuesta de autenticación
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Inicio de sesión exitoso.')),
      );
      */
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blueAccent,
                  Colors.lightBlueAccent,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Center(
            child: Card(
              elevation: 8.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              margin: EdgeInsets.symmetric(horizontal: 32),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Iniciar Sesión', style: context.titleLarge),
                      SizedBox(height: 16),
                      TextFormField(
                        controller: _usernameController,
                        decoration: InputDecoration(
                          labelText: 'Usuario',
                          prefixIcon: Icon(Icons.person),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Por favor ingresa tu usuario';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 16),
                      TextFormField(
                        controller: _passwordController,
                        decoration: InputDecoration(
                          labelText: 'Contraseña',
                          prefixIcon: Icon(Icons.lock),
                        ),
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Por favor ingresa tu contraseña';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 24),
                      ValueListenableBuilder<LoginState>(
                          valueListenable: model.state,
                          builder: (context, state, _) =>
                              _builder(context, state, _login))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _builder(
    BuildContext context,
    LoginState state,
    VoidCallback? onClick,
  ) {
    switch (state) {
      case Loading():
        return CircularProgressIndicator();
      case Ok():
        WidgetsBinding.instance.addPostFrameCallback((_) {
          //TODO: Cambiar a pagina Home
        });
        return _loginButton(
            Row(mainAxisSize: MainAxisSize.min, children: [
              Icon(Icons.thumb_up),
              Text('Iniciar sesión', style: TextStyle(fontSize: 16))
            ]),
            onClick);
      case Failure(message: final msg):
        WidgetsBinding.instance.addPostFrameCallback(
            (_) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(
                  msg,
                  style: TextStyle(color: Colors.black),
                ))));

        return _loginButton(
            Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Iniciar sesión',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(width: 10),
                  Icon(Icons.thumb_down, color: Colors.red),
                ]),
            onClick);
      default:
        return _loginButton(
          Text('Iniciar sesión', style: TextStyle(fontSize: 16)),
          onClick,
        );
    }
  }

  Widget _loginButton(Widget? child, VoidCallback? onClick) => SizedBox(
        width: double.infinity,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.symmetric(vertical: 12),
            ),
            onPressed: () {
              FocusScope.of(context).unfocus();
              if(onClick != null) onClick();
            } ,
            child: child),
      );

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    model.state.dispose();
    super.dispose();
  }
}
