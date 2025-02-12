sealed class LoginState {
  const LoginState();
}

class Initial extends LoginState {
  const Initial();
}

class Loading extends LoginState {
  const Loading();
}

class Ok<T> extends LoginState {
  const Ok(this.data);
  final T data;
}

class Failure extends LoginState {
  const Failure(this.message);
  final String message;
}
