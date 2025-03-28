import 'package:flutter/cupertino.dart';
import 'package:multiple_result/multiple_result.dart';

import '../../../../common/common.dart';
import '../../../../core/core.dart';
import '../../auth.dart';

class LoginUseCase implements UseCase<bool, LoginParams> {
  const LoginUseCase(
      this._repository, this._settingsServices); //this._storage, );

  final AuthRepository _repository;

  //final SecureStorage _storage;
  final SettingsServices _settingsServices;

  @override
  FResult<bool, HttpFailure> call(
      {required LoginParams params, Object? extra}) async {
    try {
      bool keepMeLoggedIn = _parseKeepMeLoggedIn(extra);
      final response = await _repository.login(params: params);

      return response.when((model) async {
        await _persistStorage(model, keepMeLoggedIn);
        return Success(true);
      }, (failure) => Error(failure));
    } catch (e) {
      //TODO: Arreglar lo de devolver el error para una clase generica
      return Error(HttpFailure(
          status: 500,
          title: 'Error de Storage',
          detail: 'Fallo accediendo al almacenamiento interno.'));
    }
  }

  bool _parseKeepMeLoggedIn(Object? extra) {
    if (extra is Map<String, dynamic>) {
      return extra['keepMeLoggedIn'] as bool? ?? false;
    }
    return false;
  }

  Future<void> _persistStorage(LoginModel model, bool keepMeLoggedIn) async {
    try {
      debugPrint(keepMeLoggedIn.toString());
      await _settingsServices.saveKeepSinged(keepMeLoggedIn);
      await Future.wait([
        _settingsServices.saveProfile(model.mapTo()),
        _settingsServices.saveTokens(model.accessToken, model.refreshToken),
      ]);
    } catch (_) {
      await _settingsServices.clearSettings();
      rethrow;
    }
  }
}
