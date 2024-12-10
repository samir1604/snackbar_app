import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../services/secure_storage.dart';

final class SecureStorageService implements SecureStorage {
  SecureStorageService() {
    _secureStorage = FlutterSecureStorage(
      aOptions: _androidOptions,
      iOptions: _iosOptions,
    );
  }

  static const _androidOptions =
      AndroidOptions(encryptedSharedPreferences: true);
  static const _iosOptions =
      IOSOptions(accessibility: KeychainAccessibility.first_unlock);

  late final FlutterSecureStorage _secureStorage;

  @override
  Future<void> delete(String key) async {
    try {
      await _secureStorage.delete(key: key);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<String?> read(String key) async {
    try {
      return await _secureStorage.read(key: key);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> write(String key, String value) async {
    try {
      await _secureStorage.write(key: key, value: value);
    }catch(e) {
      rethrow;
    }
  }
}
