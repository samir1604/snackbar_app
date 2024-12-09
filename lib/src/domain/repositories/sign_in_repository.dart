import '../../common/dtos/sign_in/sign_in_request.dart';
import '../../common/dtos/sign_in/sign_in_response.dart';

abstract interface class SignInRepository {
  Future<SignInResponse> signIn(SignInRequest data);
}