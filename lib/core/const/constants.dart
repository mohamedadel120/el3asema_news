import 'package:el3asema_news/core/const/colors.dart';
import 'package:el3asema_news/core/const/imports.dart';
import 'package:el3asema_news/feature/art_screen/presentation/screen/art.dart';
import 'package:el3asema_news/feature/auth/presentation/screen/prfile.dart';
import 'package:el3asema_news/feature/movie_screen/presentation/screen/movie_screen.dart';
import 'package:el3asema_news/feature/sport_screen/presentation/screen/sport_screen.dart';

List<Widget> screens = [const HomeScreen(), const ProfileScreen()];

double animatedPositionedLEftValue(int currentIndex) {
  switch (currentIndex) {
    case 0:
      return AppSizes.blockSizeHorizontal ;
    case 2:
      return AppSizes.blockSizeHorizontal * 70;
    default:
      return AppSizes.blockSizeHorizontal * 15;
  }
}

final List<Color> gradient = [
  AppColors.darkPrimaryColor.withOpacity(0.8),
  AppColors.primaryColor.withOpacity(0.5),
  Colors.transparent
];
