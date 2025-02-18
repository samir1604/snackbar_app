import '../../../../core/core.dart';
import '../../auth.dart';

abstract interface class AuthRepository {
  FResult<LoginModel, HttpFailure> login({required LoginParams params});
}