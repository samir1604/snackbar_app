import 'package:dio/dio.dart';

abstract interface class NetworkServices {
  Future<Response<T>> get<T>(String path);
}