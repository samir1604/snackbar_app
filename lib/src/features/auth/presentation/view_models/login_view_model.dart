import 'package:flutter/cupertino.dart';

import '../../../../core/core.dart';
import '../../auth.dart';

class LoginViewModel {
  LoginViewModel(this._useCase);

  final UseCase<User, LoginParams> _useCase;

  final ValueNotifier<LoginState> state =
      ValueNotifier<LoginState>(InitialState());

  Future login(String username, String password) async {
    state.value = LoadingState();
    final response = await _useCase(
        params: LoginParams(username: username, password: password));

    response.when((_) {
      state.value = SuccessState(true);
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
