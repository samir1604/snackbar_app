import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../common/constants/app_api.dart';
import '../../common/dtos/sign_in/sign_in_request.dart';
import '../../common/dtos/sign_in/sign_in_response.dart';

part 'sign_in_api.g.dart';

@RestApi()
abstract class SignInApi {
  factory SignInApi(Dio dio) => _SignInApi(dio);
  
  @POST(AppApi.signInApiEndpoint)
  Future<SignInResponse> signIn(@Body() SignInRequest data);
}