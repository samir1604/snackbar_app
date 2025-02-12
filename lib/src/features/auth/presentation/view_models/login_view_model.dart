import 'package:flutter/cupertino.dart';

import '../../../../core/core.dart';
import '../../auth.dart';


class LoginViewModel {
  LoginViewModel(this._useCase);

  final UseCase<User, LoginParams> _useCase;

  final ValueNotifier<LoginState> state = ValueNotifier<LoginState>(Initial());

  void login(String username, String password) async {
    state.value = Loading();
    //final response = await _useCase(params: LoginParams(username, password));

    await Future.delayed(Duration(milliseconds: 3000));

    state.value = Ok(true);
    /*
    response.when((_) {
      state.value = Ok();
    }, (failure) {
      state.value = Failure(failure.message);
    });

     */
  }

  void dispose() {
    state.dispose();
  }
}
