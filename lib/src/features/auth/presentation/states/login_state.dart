import 'dart:ui';

sealed class LoginState {
  const LoginState();
}

class InitialState extends LoginState {
  const InitialState();
}

class LoadingState extends LoginState {
  const LoadingState();
}

class SuccessState<T> extends LoginState {
  const SuccessState(this.data);

  final T data;
}

class FailureState extends LoginState {
  const FailureState({required this.title, required this.message, this.errors});

  final String title;
  final String message;
  final List<String>? errors;
}
