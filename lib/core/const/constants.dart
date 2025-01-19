import 'package:el3asema_news/core/const/colors.dart';
import 'package:el3asema_news/core/const/imports.dart';
import 'package:el3asema_news/feature/auth/presentation/screen/prfile.dart';

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
