import '../../data/dtos/sign_in_request.dart';
import '../../data/dtos/sign_in_response.dart';

abstract interface class SignInRepository {
  Future<SignInResponse> signIn(SignInRequest data);
}