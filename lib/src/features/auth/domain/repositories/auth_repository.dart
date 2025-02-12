import '../../auth.dart';

abstract interface class AuthRepository {
  Future<LoginModel> login({required LoginParams params});
}