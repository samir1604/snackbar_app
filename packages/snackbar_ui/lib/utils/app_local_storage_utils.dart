import 'package:get_storage/get_storage.dart';

///https://pub.dev/packages/get_storage

class AppLocalStorageUtils {
  AppLocalStorageUtils._();

  final _storage = GetStorage();
  static final AppLocalStorageUtils _instance = AppLocalStorageUtils._();

  factory AppLocalStorageUtils() => _instance;

  Future<void> saveData<T>(String key, T value) async =>
      await _storage.write(key, value);

  T? readData<T>(String key) => _storage.read<T>(key);

  Future<void> removeData(String key) async => await _storage.remove(key);

  Future<void> clearAll() async => await _storage.erase();
}
