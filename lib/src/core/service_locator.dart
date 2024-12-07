import 'package:get_it/get_it.dart';

import '../services/table_services.dart';
import 'network/network_services.dart';
import 'services/network.dart';
import 'services/secure_storage.dart';
import 'secure_storage/secure_storage_service.dart';

final getIt = GetIt.instance;

void initServiceLocator() {
  getIt.registerLazySingleton<TableServices>(() => TableServices());
  getIt.registerLazySingleton<SecureStorage>(() => SecureStorageService());
  getIt.registerLazySingleton<Network>(() => NetworkServices(getIt<SecureStorage>()));
}
