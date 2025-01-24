sealed class SignInState {
  const SignInState();
}

class Initial extends SignInState {}

class Loading extends SignInState {}

class Success extends SignInState {}

class Failure extends SignInState {
  const Failure(this.message);

  final String message;
}
