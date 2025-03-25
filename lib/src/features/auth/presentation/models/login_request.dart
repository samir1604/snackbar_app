class LoginRequest {
  const LoginRequest(
    this.username,
    this.password,
    this.keepMeLoggedIn,
  );

  final String username;
  final String password;
  final bool keepMeLoggedIn;
}
