import 'package:flutter/cupertino.dart';

import '../../../../core/core.dart';
import '../../auth.dart';


class LoginViewModel {
  LoginViewModel(this._useCase);

  final UseCase<UserModel, LoginParams> _useCase;

  final ValueNotifier<LoginState> state = ValueNotifier<LoginState>(Initial());

  void login(String username, String password) async {
    state.value = Loading();
    final response = await _useCase(params: LoginParams(username, password));

    response.when((_) {
      state.value = Ok();
    }, (failure) {
      state.value = Failure(failure.message);
    });
  }
}
