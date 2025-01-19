
import 'package:el3asema_news/core/networking/api_error_handler.dart';
import 'package:el3asema_news/core/networking/api_result.dart';
import 'package:el3asema_news/feature/auth/data/api/auth_api_services.dart';
import 'package:el3asema_news/feature/auth/data/model/login_request_body.dart';
import 'package:el3asema_news/feature/auth/data/model/login_response.dart';

class LoginRepo {
  final AuthApiServices _authApiService;

  LoginRepo(this._authApiService);


//login repo
  Future<ApiResult<LoginResponse>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await _authApiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
