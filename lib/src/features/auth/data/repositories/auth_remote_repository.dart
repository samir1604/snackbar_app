import 'package:dio/dio.dart';

import '../../../../common/common.dart';
import '../../../../core/core.dart';
import '../../auth.dart';

final class AuthRemoteRepository implements AuthRepository {
  const AuthRemoteRepository(this._authApi);

  final AuthApi _authApi;

  @override
  Future<LoginResponse> login({required LoginParams params}) async {
    try {
      return await _authApi.login(params);
    } on DioException catch (e, stackTrace) {
      throw e.toHttpClientException(stackTrace);
    } catch (e, stackTrace) {
      throw HttpClientException(
        message: HttpExceptionMessages.internalServerError500,
        exception: e as Exception,
        stackTrace: stackTrace,
      );
    }
  }
}
