// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:el3asema_news/core/const/colors.dart';
import 'package:el3asema_news/core/const/imports.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavBTN extends StatelessWidget {
  final Function(int) onPressed;
  final String? image;
  final String? title;
  // final IconData? icon;
  final int index;
  final int currentIndex;
  const BottomNavBTN({
    super.key,
    required this.onPressed,
    this.image,
    this.title,
    // this.icon,
    required this.index,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    AppSizes().initSizes(context);
    return InkWell(
      onTap: () {
        onPressed(index);
      },
      child: Container(
        height: AppSizes.blockSizeHorizontal * 13,
        width: AppSizes.blockSizeHorizontal * 17,
        decoration: const BoxDecoration(
          color: Colors.transparent,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            (currentIndex == index)
                ? Positioned(
                    left: AppSizes.blockSizeHorizontal * 4,
                    bottom: AppSizes.blockSizeHorizontal * 1.0,
                    child: Column(
                      children: [
                        Image.asset(image!,
                            scale: AppSizes.blockSizeHorizontal * 6),
                        Text(
                          title!,
                          style: TextStyle(
                            color: Colors.grey[900],
                            fontSize: 8.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  )
                : Container(),
            AnimatedOpacity(
              opacity: (currentIndex == index) ? 1 : 0.2,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeIn,
              child: Column(
                children: [
                  Image.asset(
                    image!,
                    color: AppColors.secondaryColor,
                    scale: AppSizes.blockSizeHorizontal * 4,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    title!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
