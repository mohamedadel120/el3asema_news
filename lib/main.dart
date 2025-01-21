import 'package:el3asema_news/core/const/imports.dart';
import 'package:el3asema_news/core/di/dependency_injection.dart';
import 'package:el3asema_news/core/helpers/constance.dart';
import 'package:el3asema_news/core/helpers/extensions.dart';
import 'package:el3asema_news/core/helpers/shared_pref.dart';
import 'package:el3asema_news/core/routes/app_routers.dart';
import 'package:el3asema_news/el3asema.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  await ScreenUtil.ensureScreenSize(); 
  await checkIfUserIsLoggedIn();

  runApp(
    El3asemaApp(
      appRouter: AppRouter(),
    ),
  );
}

checkIfUserIsLoggedIn() async {
  String? token =
      await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
  // check if user is logged in
  if (token.isNullOrEmpty()) {
    isLoggedInUser = false;
  } else {
    isLoggedInUser = true;
  }
}
