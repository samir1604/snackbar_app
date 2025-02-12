import 'dart:convert';

import '../../common/common.dart';
import '../../features/auth/domain/entities/user.dart';
import '../core.dart';
import '../services/profile_services.dart';

final class ProfileServicesImpl implements ProfileServices {
  const ProfileServicesImpl(this._secureStorage);

  final SecureStorage _secureStorage;

  @override
  Future<void> clearStorageProfile() async =>
      await _secureStorage.delete(SecureStorageKeys.profileStorageKey);

  @override
  Future<User?> getStorageProfile() async {
    final jsonString =
        await _secureStorage.read(SecureStorageKeys.profileStorageKey);
    if (jsonString == null || jsonString.isEmpty) return null;

    final Map<String, dynamic> jsonValue =
        json.decode(jsonString) as Map<String, dynamic>;
    return User.fromJson(jsonValue);
  }

  @override
  Future<void> saveProfileToStorage(User user) async {
    final Map<String, dynamic> jsonValue = user.toJson();
    final String jsonString = json.encode(jsonValue);
    await _secureStorage.write(SecureStorageKeys.profileStorageKey, jsonString);
  }
}
