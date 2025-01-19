import 'package:dio/dio.dart';
import 'package:el3asema_news/core/networking/dio_factory.dart';
import 'package:el3asema_news/feature/auth/data/api/auth_api_services.dart';
import 'package:el3asema_news/feature/auth/data/repo/login_repo.dart';
import 'package:el3asema_news/feature/auth/logic/cubit/login_cubit.dart';
import 'package:get_it/get_it.dart';


final sl = GetIt.instance;

Future<void> setupGetIt() async {
  Dio dio = DioFactory.getDio();

  ///authentication
  sl.registerLazySingleton<AuthApiServices>(() => AuthApiServices(dio));

  ///login
  sl.registerLazySingleton<LoginRepo>(() => LoginRepo(sl()));
  sl.registerFactory<LoginCubit>(() => LoginCubit(sl()));
/* 
  ///signUp
  sl.registerLazySingleton<SignUpRepo>(() => SignUpRepo(sl()));
  sl.registerFactory<SignupCubit>(() => SignupCubit(sl()));

  //home screen
  sl.registerLazySingleton<HomeApiServices>(()=> HomeApiServices(dio));
  sl.registerLazySingleton<HomeRepo>(()=> HomeRepo(sl())); */
}
