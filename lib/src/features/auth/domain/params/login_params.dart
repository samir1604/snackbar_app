import 'package:equatable/equatable.dart';

final class LoginParams extends Equatable {
  const LoginParams(this.username, this.password);

  final String username;
  final String password;

  @override
  List<Object?> get props => [
        username,
        password,
      ];
}
