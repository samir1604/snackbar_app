import '../../auth.dart';

abstract interface class AuthRepository {
  Future<LoginResponse> login({required LoginParams params});
}