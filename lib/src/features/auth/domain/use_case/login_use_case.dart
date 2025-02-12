import 'dart:convert';

import 'package:multiple_result/multiple_result.dart';

import '../../../../common/common.dart';
import '../../../../core/core.dart';
import '../../auth.dart';

class LoginUseCase implements UseCase<User, LoginParams> {
  const LoginUseCase(this._repository, this._storage);

  final AuthRepository _repository;
  final SecureStorage _storage;

  @override
  Future<Result<User, HttpClientException>> call(
      {required LoginParams params}) async {
    try {
      final response = await _repository.login(params: params);
      final user = response.toUser();

      await Future.wait([
        _storage.write(SecureStorageKeys.accessTokenKey, response.accessToken),
        _storage.write(SecureStorageKeys.refreshTokenKey, response.accessToken),
        _storage.write(SecureStorageKeys.userKey, jsonEncode(user)),
      ]);

      return Success(response.toUser());
    } on HttpClientException catch (e) {
      return Error(e);
    } catch (e, stackTrace) {
      return Error(HttpClientException(
        message: e.toString(),
        exception: e as Exception,
        stackTrace: stackTrace,
      ));
    }
  }
}
