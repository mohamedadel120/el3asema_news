/* import 'package:el3asema_news/core/const/colors.dart';
import 'package:el3asema_news/core/const/imports.dart';

class FinalView extends StatefulWidget {
  const FinalView({super.key});

  @override
  FinalViewState createState() => FinalViewState();
}

class FinalViewState extends State<FinalView> {
  int _currentIndex = 0;
  final PageController pageController = PageController();

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void animateToPage(int page) {
    pageController.animateToPage(
      page,
      duration: const Duration(
        milliseconds: 400,
      ),
      curve: Curves.decelerate,
    );
  }

  @override
  Widget build(BuildContext context) {
    AppSizes().initSizes(context);
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Positioned.fill(
              child: PageView(
                onPageChanged: (value) {
                  setState(() {
                    _currentIndex = value;
                  });
                },
                controller: pageController,
                children: screens,
              ),
            ),
            Positioned(
              bottom: -30,
              right: 0,
              left: 0,
              child: bottomNav(),
            ),
          ],
        ),
      ),
    );
  }

  Widget bottomNav() {
    return Padding(
      padding: EdgeInsets.fromLTRB(AppSizes.blockSizeHorizontal * 4.5, 0,
          AppSizes.blockSizeHorizontal * 4.5, 50),
      child: Material(
        borderRadius: BorderRadius.circular(30),
        color: Colors.transparent,
        elevation: 6,
        child: Container(
          height: AppSizes.blockSizeHorizontal * 18,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.grey[900],
            borderRadius: BorderRadius.circular(30),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 0,
                bottom: 0,
                left: AppSizes.blockSizeHorizontal * 13,
                right: AppSizes.blockSizeHorizontal * 12,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    BottomNavBTN(
                      onPressed: (val) {
                        animateToPage(val);
                        setState(() {
                          _currentIndex = val;
                        });
                      },
                      // icon: IconlyLight.home,
                      image: 'assets/icons/home.png',
                      title: "Home",
                      currentIndex: _currentIndex,
                      index: 0,
                    ),
                    /* BottomNavBTN(
                      onPressed: (val) {
                        animateToPage(val);

                        setState(() {
                          _currentIndex = val;
                        });
                      },
                      // icon: IconlyLight.video,
                      image: "assets/icons/movies.png",
                      title: "Movies",
                      currentIndex: _currentIndex,
                      index: 1,
                    ),
                    BottomNavBTN(
                      onPressed: (val) {
                        animateToPage(val);

                        setState(() {
                          _currentIndex = val;
                        });
                      },
                      // icon: IconlyLight.category,
                      image: "assets/icons/fashion.png",
                      title: "Fashion",
                      currentIndex: _currentIndex,
                      index: 2,
                    ),
                    BottomNavBTN(
                      onPressed: (val) {
                        animateToPage(val);

                        setState(() {
                          _currentIndex = val;
                        });
                      },
                      // icon: IconlyLight.setting,
                      image: "assets/icons/sport.png",
                      title: "Sport",
                      currentIndex: _currentIndex,
                      index: 3,
                    ), */
                    BottomNavBTN(
                      onPressed: (val) {
                        animateToPage(val);

                        setState(() {
                          _currentIndex = val;
                        });
                      },
                      // icon: IconlyLight.profile,
                      image: "assets/icons/profile.png",
                      title: "Profile",
                      currentIndex: _currentIndex,
                      index: 1,
                    ),
                  ],
                ),
              ),
              AnimatedPositioned(
                duration: const Duration(milliseconds: 300),
                curve: Curves.decelerate,
                right: 20,
                bottom: 0,
                top: 0,
                left: animatedPositionedLEftValue(_currentIndex),
                child: Column(
                  children: [
                    Container(
                      height: AppSizes.blockSizeHorizontal * 1.0,
                      width: AppSizes.blockSizeHorizontal * 8,
                      decoration: BoxDecoration(
                        color: AppColors.secondaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    ClipPath(
                      clipper: MyCustomClipper(),
                      child: Container(
                        height: AppSizes.blockSizeHorizontal * 15,
                        width: AppSizes.blockSizeHorizontal * 12,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: gradient,
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
 */

import 'package:el3asema_news/core/const/colors.dart';
import 'package:el3asema_news/core/const/imports.dart';
import 'package:flutter/services.dart';

class FinalView extends StatefulWidget {
  const FinalView({super.key});

  @override
  FinalViewState createState() => FinalViewState();
}

class FinalViewState extends State<FinalView> {
  int _currentIndex = 0;
  final PageController pageController = PageController();

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void animateToPage(int page) {
    pageController.animateToPage(
      page,
      duration: const Duration(milliseconds: 400),
      curve: Curves.decelerate,
    );
  }

  double animatedPositionedLEftValue(int index) {
    switch (index) {
      case 0:
        return AppSizes.blockSizeHorizontal * 13.8;
      case 1:
        return AppSizes.blockSizeHorizontal * 58;
      default:
        return AppSizes.blockSizeHorizontal * 15;
    }
  }

  @override
  Widget build(BuildContext context) {
    AppSizes().initSizes(context);
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Positioned.fill(
              child: PageView(
                onPageChanged: (value) {
                  setState(() {
                    _currentIndex = value;
                  });
                },
                controller: pageController,
                children: screens,
              ),
            ),
            Positioned(
              bottom: -25, // Adjusted for a more subtle overlap
              right: 0,
              left: 0,
              child: bottomNav(),
            ),
          ],
        ),
      ),
    );
  }

  Widget bottomNav() {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        AppSizes.blockSizeHorizontal * 4.5,
        0,
        AppSizes.blockSizeHorizontal * 4.5,
        40, // Reduced bottom padding
      ),
      child: Material(
        borderRadius: BorderRadius.circular(40), // Increased border radius
        color: Colors.transparent,
        elevation: 10, // Increased elevation for a stronger shadow
        shadowColor: Colors.black.withOpacity(0.4), // More opaque shadow
        child: Container(
          height: AppSizes.blockSizeHorizontal * 17, // Increased height
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.grey[850], // Slightly lighter background
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 10,
                spreadRadius: 2,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Stack(
            children: [
              AnimatedPositioned(
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeInOut,
                left: animatedPositionedLEftValue(_currentIndex),
                child: Column(
                  children: [
                    Container(
                      height: AppSizes.blockSizeHorizontal * 1.0,
                      width: AppSizes.blockSizeHorizontal * 8,
                      decoration: BoxDecoration(
                        color: AppColors.secondaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    ClipPath(
                      clipper: MyCustomClipper(),
                      child: Container(
                        height: AppSizes.blockSizeHorizontal * 15,
                        width: AppSizes.blockSizeHorizontal * 12,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: gradient,
                        )),
                      ),
                    ),
                  ],
                ),
              ),

              Positioned(
                top: 0,
                bottom: 0,
                left: AppSizes.blockSizeHorizontal * 13,
                right: AppSizes.blockSizeHorizontal * 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    BottomNavBTN(
                      onPressed: (val) {
                        animateToPage(val);
                        setState(() {
                          _currentIndex = val;
                        });
                      },
                      image: 'assets/icons/home.png',
                      title: "Home",
                      currentIndex: _currentIndex,
                      index: 0,
                    ),
                    const Spacer(),
                    BottomNavBTN(
                      onPressed: (val) {
                        animateToPage(val);
                        setState(() {
                          _currentIndex = val;
                        });
                      },
                      image: "assets/icons/profile.png",
                      title: "Profile",
                      currentIndex: _currentIndex,
                      index: 1,
                    ),
                  ],
                ),
              ),

              // Animated Indicator (Enhanced)
            ],
          ),
        ),
      ),
    );
  }
}

// Custom Clipper (No change needed here)
/* class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, size.height);
    path.lineTo(size.width / 2, 0);
    path.lineTo(size.width, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
} */

// Button Widget for Bottom Navigation (Enhanced)
class BottomNavBTN extends StatelessWidget {
  final String image;
  final String title;
  final int currentIndex;
  final int index;
  final Function(int) onPressed;

  const BottomNavBTN({
    super.key,
    required this.image,
    required this.title,
    required this.currentIndex,
    required this.index,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPressed(index),
      child: Padding(
        padding: EdgeInsets.all(AppSizes.blockSizeHorizontal * 2), // Padding
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              height: AppSizes.blockSizeHorizontal * 7, // Larger icon
              color: currentIndex == index
                  ? Colors.white
                  : Colors.grey, // Active/Inactive state
            ),
            SizedBox(height: AppSizes.blockSizeVertical * 0.5),
            AnimatedDefaultTextStyle(
              // Text animation
              duration: const Duration(milliseconds: 200),
              style: TextStyle(
                color: currentIndex == index ? Colors.white : Colors.grey,
                fontSize: AppSizes.blockSizeHorizontal * 3.5, // Larger font
                fontWeight:
                    currentIndex == index ? FontWeight.bold : FontWeight.normal,
              ),
              child: Text(title),
            ),
          ],
        ),
      ),
    );
  }
}

// Example placeholder for your screens
