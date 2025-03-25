import 'dart:convert';

import 'package:multiple_result/multiple_result.dart';

import '../../../../common/common.dart';
import '../../../../core/core.dart';
import '../../auth.dart';

class LoginUseCase implements UseCase<User, LoginParams> {
  const LoginUseCase(this._repository, this._storage, this._settingsServices);

  final AuthRepository _repository;
  final SecureStorage _storage;
  final SettingsServices _settingsServices;

  @override
  FResult<User, HttpFailure> call(
      {required LoginParams params, Object? extra}) async {
    final map = extra as Map<String, dynamic>;

    final keepMeLoggedIn = map['keepMeLoggedIn'] as bool;

    final response = await _repository.login(params: params);

    return response.when((model) async {
      await Future.wait([
        _storage.write(
            SecureStorageKeys.accessTokenStorageKey, model.accessToken),
        _storage.write(
            SecureStorageKeys.refreshTokenStorageKey, model.accessToken),
        _storage.write(
            SecureStorageKeys.profileStorageKey, jsonEncode(model.mapTo())),
        _settingsServices.saveKeepSinged(keepMeLoggedIn),
      ]);
      _settingsServices.setLoginTimeStamp();
      return Success(model.mapTo());
    }, (failure) => Error(failure));
  }
}
