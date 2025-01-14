import 'package:el3asema_news/core/const/imports.dart';
import 'package:el3asema_news/core/routes/app_routers.dart';
import 'package:el3asema_news/el3asema.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(El3asemaApp(
     appRouter: AppRouter(),
  ),);
} 