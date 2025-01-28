sealed class LoginState {
  const LoginState();
}

class Initial extends LoginState {}

class Loading extends LoginState {}

class Ok extends LoginState {}

class Failure extends LoginState {
  const Failure(this.message);

  final String message;
}
