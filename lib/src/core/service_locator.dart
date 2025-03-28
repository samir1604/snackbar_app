import 'package:dio/dio.dart';
import 'package:dio_http_formatter/dio_http_formatter.dart';
import 'package:get_it/get_it.dart';

import '../common/common.dart';
import '../features/auth/auth.dart';

import 'core.dart';
import 'local/in_memory_cache.dart';

final getIt = GetIt.instance;

void initServiceLocator() {
  /// Core Services
  getIt.registerLazySingleton<SecureStorage>(
    () => SecureStorageService(),
  );
  getIt.registerLazySingleton<TokenServices>(
    () => TokenStorageServices(getIt<SecureStorage>()),
  );
  getIt.registerLazySingleton<ProfileServices>(
    () => ProfileServicesImpl(getIt<SecureStorage>()),
  );
  getIt.registerLazySingleton<SettingsServices>(
    () => LocalSettingsServices(
      getIt<ProfileServices>(),
      getIt<TokenServices>(),
      getIt<SecureStorage>(),
      getIt<InMemoryCache>(),
    ),
  );

  getIt.registerLazySingleton<InMemoryCache>(() => InMemoryCache());

  /// Connection
  getIt.registerLazySingleton<Dio>(() {
    final Dio dio = Dio(BaseOptions(
      baseUrl: NetworkSettings.baseUrl,
      connectTimeout: NetworkSettings.connectTimeout,
      receiveTimeout: NetworkSettings.receiveTimeout,
      sendTimeout: NetworkSettings.sendTimeout,
    ));
    dio.interceptors.addAll([
      HttpFormatter(loggingFilter: (_, __, ___) => true),
      NetworkInterceptor(
        dio,
        getIt<SettingsServices>(),
        //getIt<TokenServices>(),
        //getIt<ProfileServices>(),
      ),
    ]);

    return dio;
  });

  /// Repositories
  //getIt.registerLazySingleton<TableServices>(() => TableServices());
  getIt.registerLazySingleton<AuthRepository>(
    () => AuthRemoteRepository(AuthApi(
      getIt<Dio>(),
      NetworkSettings.baseUrl,
    )),
  );

  /// Use Cases
  getIt.registerLazySingleton<UseCase<bool, LoginParams>>(
    () => LoginUseCase(
      getIt<AuthRepository>(),
      getIt<SettingsServices>(),
      //getIt<SecureStorage>(),

    ),
  );

  /// View Models
  getIt.registerFactory<LoginViewModel>(
      () => LoginViewModel(getIt<UseCase<bool, LoginParams>>()));
}
