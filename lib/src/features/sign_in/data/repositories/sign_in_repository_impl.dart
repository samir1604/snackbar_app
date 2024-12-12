import 'package:dio/dio.dart';

import '../../../../core/exceptions/failure.dart';
import '../../../../core/extensions/dio_exceptions_mapper.dart';
import '../dtos/sign_in_request.dart';

import '../../domain/repositories/sign_in_repository.dart';
import '../remote/sign_in_api.dart';
import '../dtos/sign_in_response.dart';

final class SignInRepositoryImpl implements SignInRepository {
  const SignInRepositoryImpl(this._signInApi);

  final SignInApi _signInApi;

  @override
  Future<SignInResponse> signIn(SignInRequest data) async {
    try {
      final response = await _signInApi.signIn(data);
      return response;
    } on DioException catch (e, stackTrace) {
      throw e.toFailure(stackTrace);
    } catch (e, stackTrace) {
      throw Failure(
        message: 'An unexpected error occurred. Try again later',
        exception: e as Exception,
        stackTrace: stackTrace,
      );
    }
  }
}
