import 'package:dio/dio.dart';
import 'package:dio_http_formatter/dio_http_formatter.dart';
import '../services/network.dart';
import '../services/secure_storage.dart';
import 'network_config.dart';
import 'network_interceptor.dart';

final class NetworkServices implements Network {
  NetworkServices(SecureStorage secureStorage) {
    _dio = Dio(_baseOptions)
      ..interceptors.addAll([
        HttpFormatter(),
        NetworkInterceptor(secureStorage),
      ]);
  }

  static final BaseOptions _baseOptions = BaseOptions(
    baseUrl: NetworkConfig.baseUrl,
    connectTimeout: NetworkConfig.connectTimeout,
    receiveTimeout: NetworkConfig.receiveTimeout,
    sendTimeout: NetworkConfig.sendTimeout,
  );

  late final Dio _dio;

  Dio createDio() => _dio;
}
