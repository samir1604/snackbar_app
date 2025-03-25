import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/auth.dart';
import '../../features/home/pages/home_page.dart';
import '../core.dart';
import 'router_constants.dart';

class Routers {
  const Routers(this._settings);

  final SettingsServices _settings;

  GoRouter get router => _routes();

  GoRouter _routes() => GoRouter(
      initialLocation: RoutesPath.homePath,
      routes: <RouteBase>[
        _home(),
        _login(),
      ],
      debugLogDiagnostics: true,
      errorPageBuilder: (_, __) => MaterialPage(child: HomePage()),
      redirect: (context, state) async {
        final isLoginPath = state.path == RoutesPath.loginPath;
        final isKeepMeSinged = await _settings.keepMeSignedIn;
        final isLogged = await _settings.isLoggedIn;

        if (!isLogged && !isKeepMeSinged && !isLoginPath) {
          return RoutesPath.loginPath;
        }

        if (isLogged && !isKeepMeSinged && !isLoginPath) {
          if (_settings.loginTimeStamp == null) return RoutesPath.loginPath;

          final difference =
              DateTime.now().difference(_settings.loginTimeStamp!);
          final sessionDuration = Duration(minutes: 10);

          if (difference > sessionDuration) {
            return RoutesPath.loginPath;
          } else {
            _settings.setLoginTimeStamp();
          }
        }

        return null;
      });

  GoRoute _home() => GoRoute(
        name: RoutesName.homeName,
        path: RoutesPath.homePath,
        builder: (_, __) => const HomePage(),
      );

  GoRoute _login() => GoRoute(
        name: RoutesName.loginName,
        path: RoutesPath.loginPath,
        builder: (_, __) => const LoginPage(),
      );
}
