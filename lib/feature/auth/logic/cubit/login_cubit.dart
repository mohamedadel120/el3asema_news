
import 'package:el3asema_news/core/const/imports.dart';
import 'package:el3asema_news/core/helpers/constance.dart';
import 'package:el3asema_news/core/helpers/shared_pref.dart';
import 'package:el3asema_news/core/networking/dio_factory.dart';
import 'package:el3asema_news/feature/auth/data/model/login_request_body.dart';
import 'package:el3asema_news/feature/auth/data/repo/login_repo.dart';
import 'package:el3asema_news/feature/auth/logic/cubit/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());


  //Todo: 1- create TextEditingController to phone and password
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  void login() async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    response.when(
      success: (loginResponse) async {
        //*this function is save user token after loggedIn successfully

        await saveUserToken(loginResponse.userData?.token ?? '');
        emit(
          LoginState.success(loginResponse),
        );
      },
      failure: (error) {
        emit(
          LoginState.error(error: error.message ?? ''),
        );
      },
    );
  }

  Future<void> saveUserToken(String token) async {
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }
}
