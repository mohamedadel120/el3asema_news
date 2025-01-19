import 'package:el3asema_news/core/const/imports.dart';
import 'package:el3asema_news/core/di/dependency_injection.dart';
import 'package:el3asema_news/core/routes/routes_cosnt.dart';
import 'package:el3asema_news/feature/auth/logic/cubit/login_cubit.dart';
import 'package:el3asema_news/feature/auth/presentation/screen/login.dart';
import 'package:el3asema_news/feature/auth/presentation/screen/sign_up.dart';
import 'package:el3asema_news/feature/final_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) =>LoginCubit(sl()),
                  child: const SignInScreen(),
                ));
      case Routes.signUpScreen:
        return MaterialPageRoute(builder: (_) => Placeholder());
      case Routes.bottomNavScreen:
        return MaterialPageRoute(builder: (_) => const FinalView());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
    }
    return null;
  }
}
