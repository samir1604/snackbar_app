import 'package:dio/dio.dart';
import 'package:dio_http_formatter/dio_http_formatter.dart';
import 'package:get_it/get_it.dart';

import '../common/constants/app_network_settings.dart';
import '../data/remote/sign_in_api.dart';
import '../data/repositories/sign_in_repository_impl.dart';
import '../domain/entities/user.dart';
import '../domain/repositories/sign_in_repository.dart';
import '../domain/use_cases/use_case.dart';
import '../features/sign_in/params/sign_in_params.dart';
import '../features/sign_in/usecase/sign_in_usecase.dart';
import '../services/table_services.dart';
import 'local/secure_storage/secure_storage_service.dart';
import 'remote/network/network_interceptor.dart';
import 'remote/token/token_service_impl.dart';
import 'services/secure_storage.dart';

final getIt = GetIt.instance;

void initServiceLocator() {
  //Core
  getIt.registerLazySingleton<SecureStorage>(() => SecureStorageService());

  getIt.registerLazySingleton<Dio>(() {
    final Dio dio = Dio(BaseOptions(
      baseUrl: AppNetworkSettings.baseUrl,
      connectTimeout: AppNetworkSettings.connectTimeout,
      receiveTimeout: AppNetworkSettings.receiveTimeout,
      sendTimeout: AppNetworkSettings.sendTimeout,
    ));
    dio.interceptors.addAll([
      HttpFormatter(),
      NetworkInterceptor(dio, TokenServiceImpl(dio, getIt<SecureStorage>())),
    ]);

    return dio;
  });

  //Repositories
  getIt.registerLazySingleton<TableServices>(() => TableServices());
  getIt.registerLazySingleton<SignInRepository>(
      () => SignInRepositoryImpl(SignInApi(getIt<Dio>())));

  //Use Cases
  getIt.registerLazySingleton<UseCase<User, SignInParams>>(
      () => SignInUseCase(getIt<SignInRepository>()));
}
