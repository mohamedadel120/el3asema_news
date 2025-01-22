import 'package:el3asema_news/core/networking/api_error_model.dart';

abstract class HomeStates {}

class HomeInitialState extends HomeStates {}
class HomeLoadingState extends HomeStates {}
class HomeSuccessState extends HomeStates {}
class HomeErrorState extends HomeStates {
  final ApiErrorModel apiErrorModel;

  HomeErrorState(this.apiErrorModel);
}
