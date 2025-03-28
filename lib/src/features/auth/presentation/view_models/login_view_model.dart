import 'package:flutter/cupertino.dart';

import '../../../../core/core.dart';
import '../../auth.dart';

class LoginViewModel {
  LoginViewModel(this._useCase);

  final UseCase<bool, LoginParams> _useCase;

  final ValueNotifier<LoginState> state =
      ValueNotifier<LoginState>(InitialState());

  Future<void> login(
      {required String username,
      required String password,
      bool keepMeLoggedIn = false}) async {
    state.value = LoadingState();
    final response = await _useCase(
        params: LoginParams(
          username: username,
          password: password,
        ),
        extra: {
          'keepMeLoggedIn': keepMeLoggedIn,
        });

    response.when((result) async {
      state.value = SuccessState(result);
    }, (failure) {
      final errors = failure.errors?.map((e) => e.description).toList();
      state.value = FailureState(
        title: failure.title,
        message: failure.detail,
        errors: errors,
      );
    });
  }

  void dispose() {
    state.dispose();
  }
}
