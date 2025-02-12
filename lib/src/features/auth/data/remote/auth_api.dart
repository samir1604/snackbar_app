import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../common/constants/endpoint_strings.dart';
import '../../auth.dart';

part 'auth_api.g.dart';

@RestApi()
abstract class AuthApi {
  factory AuthApi(Dio dio) => _AuthApi(dio);
  
  @POST(EndpointStrings.loginEndpoint)
  Future<LoginResponse> login(@Body() LoginParams data);
}