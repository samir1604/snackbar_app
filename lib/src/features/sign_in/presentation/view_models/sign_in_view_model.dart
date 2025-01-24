import 'package:flutter/cupertino.dart';

import '../../../../domain/use_cases/use_case.dart';
import '../../domain/models/user_model.dart';
import '../../domain/params/sign_in_params.dart';
import '../states/sign_in_state.dart';

class SignInViewModel {
  SignInViewModel(this._useCase);

  final UseCase<UserModel, SignInParams> _useCase;

  final ValueNotifier<SignInState> state = ValueNotifier<SignInState>(Initial());

  void signIn(String username, String password) async {
    state.value = Loading();
    final response = await _useCase(params: SignInParams(username, password));

    response.when((_) {
      state.value = Success();
    }, (failure) {
      state.value = Failure(failure.message);
    });
  }
}
