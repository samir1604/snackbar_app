import 'package:equatable/equatable.dart';

final class SignInParams extends Equatable {
  const SignInParams(this.username, this.password);

  final String username;
  final String password;

  @override
  // TODO: implement props
  List<Object?> get props => [
        username,
        password,
      ];
}
