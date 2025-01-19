import 'package:el3asema_news/core/helpers/constance.dart';
import 'package:el3asema_news/core/helpers/extensions.dart';
import 'package:el3asema_news/core/helpers/shared_pref.dart';
import 'package:el3asema_news/core/routes/routes_cosnt.dart';
import 'package:el3asema_news/core/routes/app_routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class El3asemaApp extends StatelessWidget {
  AppRouter appRouter;
  El3asemaApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: const Size(375, 812),
      child: MaterialApp(
        title: "el3asema news",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
        ),
        home: const Banner(
          color: Colors.blue,
          message: 'Mohamed Adel',
          location: BannerLocation.bottomStart,
        ),
        onGenerateRoute: appRouter.generateRoute,
        initialRoute: Routes.loginScreen,
      ),
    );
  }
}

