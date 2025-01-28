import '../../auth.dart';

abstract interface class AuthRepository {
  Future<LoginResponse> login(LoginRequest data);
}