import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../common/constants/app_network_settings.dart';
import '../data/remote/sign_in_api.dart';
import '../data/repositories/sign_in_repository_impl.dart';
import '../domain/repositories/sign_in_repository.dart';
import '../services/table_services.dart';
import 'remote/network/network_services_impl.dart';
import 'remote/token/token_service_impl.dart';
import 'services/network_services.dart';
import 'services/secure_storage.dart';
import 'secure_storage/secure_storage_service.dart';
import 'services/token_services.dart';

final getIt = GetIt.instance;

void initServiceLocator() {

  //Core
  getIt.registerLazySingleton<Dio>(() => Dio(BaseOptions(
        baseUrl: AppNetworkSettings.baseUrl,
        connectTimeout: AppNetworkSettings.connectTimeout,
        receiveTimeout: AppNetworkSettings.receiveTimeout,
        sendTimeout: AppNetworkSettings.sendTimeout,
      )));
  getIt.registerLazySingleton<SecureStorage>(() => SecureStorageService());
  getIt.registerLazySingleton<TokenServices>(
          () => TokenServiceImpl(getIt<Dio>(), getIt<SecureStorage>()));
  getIt.registerLazySingleton<NetworkServices>(
          () => NetworkServicesImpl(getIt<Dio>(), getIt<TokenServices>()));

  //Repositories
  getIt.registerLazySingleton<TableServices>(() => TableServices());
  getIt.registerLazySingleton<SignInRepository>(() => SignInRepositoryImpl(SignInApi(getIt<Dio>())));

}
