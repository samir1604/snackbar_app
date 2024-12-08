import 'package:dio/dio.dart';
import 'package:dio_http_formatter/dio_http_formatter.dart';

import '../../services/network_services.dart';
import '../../services/token_services.dart';
import 'network_interceptor.dart';

final class NetworkServicesImpl implements NetworkServices {
  NetworkServicesImpl(this._dio, this._tokenServices) {
    _dio.interceptors.addAll([
      HttpFormatter(),
      NetworkInterceptor(_dio, _tokenServices),
    ]);
  }

  final Dio _dio;
  final TokenServices _tokenServices;

  @override
  Future<Response<T>> get<T>(String path) => _dio.get(path);
}
