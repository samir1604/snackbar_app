import 'dart:convert';

import 'package:multiple_result/multiple_result.dart';

import '../../../../common/constants/app_secure_storage_keys.dart';
import '../../../../core/exceptions/failure.dart';
import '../../../../core/services/secure_storage.dart';
import '../../data/dtos/sign_in_request.dart';
import '../models/user_model.dart';
import '../repositories/sign_in_repository.dart';
import '../../../../domain/use_cases/use_case.dart';
import '../params/sign_in_params.dart';

class SignInUseCase implements UseCase<UserModel, SignInParams> {
  const SignInUseCase(this._repository, this._storage);

  final SignInRepository _repository;
  final SecureStorage _storage;

  @override
  Future<Result<UserModel, Failure>> call(
      {required SignInParams params}) async {
    try {
      final request = SignInRequest(
        user: params.username,
        password: params.password,
      );

      final response = await _repository.signIn(request);
      final user = response.toUser();

      await Future.wait([
        _storage.write(
            AppSecureStorageKeys.accessTokenKey, response.accessToken),
        _storage.write(
            AppSecureStorageKeys.refreshTokenKey, response.accessToken),
        _storage.write(AppSecureStorageKeys.userKey, jsonEncode(user)),
      ]);

      return Success(response.toUser());
    } on Failure catch (e) {
      return Error(e);
    } catch (e, stackTrace) {
      return Error(Failure(
        message: e.toString(),
        exception: e as Exception,
        stackTrace: stackTrace,
      ));
    }
  }
}
