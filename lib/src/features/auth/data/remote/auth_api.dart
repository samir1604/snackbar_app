import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../common/common.dart';
import '../../../../common/constants/network/endpoint_strings.dart';
import '../../auth.dart';

part 'auth_api.g.dart';

@RestApi()
abstract class AuthApi {
  factory AuthApi(Dio dio, String baseUrl) => _AuthApi(dio, baseUrl: baseUrl);

  @POST(EndpointStrings.loginEndpoint)
  Future<LoginModel> login(@Body() LoginParams data);
}
