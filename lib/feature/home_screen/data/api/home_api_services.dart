import 'package:dio/dio.dart';
import 'package:el3asema_news/core/networking/api_constants.dart';
import 'package:el3asema_news/feature/home_screen/data/models/news_response.dart';
import 'package:retrofit/retrofit.dart';

part 'home_api_services.g.dart';
@RestApi(baseUrl: ApiConstants.newsBaseUrl)
abstract class HomeApiServices {
  factory HomeApiServices(Dio dio, {String baseUrl}) = _HomeApiServices;

  // Get News

  //?q=egypt&apiKey=bd0a13ced182424fa15758562eba2821
  //?q=egypt&apiKey=bd0a13ced182424fa15758562eba2821
  @GET(ApiConstants.news)
  Future<NewsResponse> getNews(
    @Query('q') String query,
    @Query('apiKey') String apiKey,
  );
}