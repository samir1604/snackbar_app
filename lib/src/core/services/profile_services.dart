import '../../features/auth/auth.dart';

abstract interface class ProfileServices {
  Future<User?> getStorageProfile();

  Future<void> saveProfileToStorage(User user);

  Future<void> clearStorageProfile();

  Future<bool> isLogged();
}
