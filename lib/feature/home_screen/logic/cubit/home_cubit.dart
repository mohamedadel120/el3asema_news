import 'package:bloc/bloc.dart';
import 'package:el3asema_news/feature/home_screen/data/models/news_response.dart';
import 'package:el3asema_news/feature/home_screen/data/repository/home_repo.dart';
import 'package:el3asema_news/feature/home_screen/logic/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeStates> {
  final HomeRepo _homeRepo;
  NewsResponse? newsResponse;
  HomeCubit(this._homeRepo) : super(HomeInitialState());


  Future<void> getNews() async {
    emit(HomeLoadingState());
    final result = await _homeRepo.getNews();
    result.when(
      success: (newsResponse) {
        this.newsResponse = newsResponse;
        emit(HomeSuccessState());
      },
      failure: (error) {
        emit(HomeErrorState(error));
      },
    );
  }
}
