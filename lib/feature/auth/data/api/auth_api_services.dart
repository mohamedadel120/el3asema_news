import 'package:dio/dio.dart';
import 'package:el3asema_news/feature/auth/data/model/login_request_body.dart';
import 'package:el3asema_news/feature/auth/data/model/login_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:el3asema_news/core/networking/api_constants.dart';


part 'auth_api_services.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class AuthApiServices {
  factory AuthApiServices(Dio dio, {String baseUrl}) = _AuthApiServices;

// Login
  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );

}
