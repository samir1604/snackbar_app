import 'package:dio/dio.dart';

import '../../common/dtos/sign_in/sign_in_request.dart';
import '../../common/dtos/sign_in/sign_in_response.dart';
import '../../domain/repositories/sign_in_repository.dart';
import '../remote/sign_in_api.dart';

final class SignInRepositoryImpl implements SignInRepository {
  const SignInRepositoryImpl(this._signInApi);

  final SignInApi _signInApi;

  @override
  Future<SignInResponse> signIn(SignInRequest data) async {
    try {
      final response = await _signInApi.signIn(data);
      return response;
    } on DioException catch(_) {
      rethrow;
    }
  }
}