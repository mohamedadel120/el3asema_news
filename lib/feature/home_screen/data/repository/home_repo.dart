import 'package:el3asema_news/core/networking/api_error_handler.dart';
import 'package:el3asema_news/core/networking/api_result.dart';
import 'package:el3asema_news/feature/home_screen/data/api/home_api_services.dart';
import 'package:el3asema_news/feature/home_screen/data/models/news_response.dart';

class HomeRepo {
  final HomeApiServices _homeApiServices;

  HomeRepo(this._homeApiServices);  


  Future<ApiResult<NewsResponse>> getNews() async {
    try {
      final response = await _homeApiServices.getNews('egypt', 'bd0a13ced182424fa15758562eba2821');
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}