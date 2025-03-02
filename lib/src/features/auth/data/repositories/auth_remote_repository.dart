import 'package:dio/dio.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:snackbar_ui/snackbar_ui.dart';

import '../../../../core/core.dart';
import '../../auth.dart';

final class AuthRemoteRepository implements AuthRepository {
  const AuthRemoteRepository(this._authApi);

  final AuthApi _authApi;

  @override
  FResult<LoginModel, HttpFailure> login({required LoginParams params}) async {
    try {
      final result = await _authApi.login(params);
      return Success(result);
    } on DioException catch (e, stackTrace) {
      return Error(e.mapToHttpFailure(stackTrace));
    } catch (e, stackTrace) {
      AppLoggerUtils.error(e.toString());
      return Error(HttpFailure.createInternalServerException(stackTrace));
    }
  }
}
