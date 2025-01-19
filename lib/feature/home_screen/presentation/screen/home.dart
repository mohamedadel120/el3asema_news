/* import 'dart:developer';

import 'package:el3asema_news/core/const/colors.dart';
import 'package:el3asema_news/core/const/imports.dart';
import 'package:el3asema_news/feature/home_screen/data/models/local_models/news.dart';
import 'package:el3asema_news/feature/home_screen/presentation/screen/details_screen.dart';
import 'package:el3asema_news/feature/home_screen/presentation/shared/item_news.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: _buildAppBar(screenWidth),
      body: _buildBody(context, screenWidth, screenHeight),
    );
  }

  // AppBar with responsive sizing for the logo and icons
  AppBar _buildAppBar(double screenWidth) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      title: Image.asset(
        "assets/images/logo.png",
        fit: BoxFit.contain,
        scale: AppSizes.blockSizeHorizontal * 5,

        // width: screenWidth * 0.15, // Responsive width for the logo
      ),
      leading: IconButton(
        icon: Image.asset(
          "assets/icons/back.png",
          scale: AppSizes.blockSizeHorizontal * 5,
          // width: screenWidth * 0.07, // Responsive width for the back icon
        ),
        onPressed: () {
          // Add back navigation logic
        },
      ),
      actions: [
        IconButton(
          icon: Image.asset(
            "assets/icons/search.png",
            width: screenWidth * 0.07, // Responsive width for the search icon
          ),
          onPressed: () {
            // Add search functionality
          },
        ),
        SizedBox(width: screenWidth * 0.02), // Responsive spacing
      ],
    );
  }

  // Body with dynamic grid layout
  Widget _buildBody(
      BuildContext context, double screenWidth, double screenHeight) {
    int currentIndex = 0;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: screenHeight * 0.02), // Responsive spacing

        Container(
          height: screenHeight * 0.03, // Responsive height
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
          child: ListView.separated(
            itemCount: screens.length,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                // Add navigation logic
                setState(() {
                  currentIndex = index;
                });
                log("====================================================================$currentIndex");
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
                width: index == currentIndex
                    ? screenWidth * 0.1
                    : screenWidth * 0.25, // Responsive width for the category
                decoration: BoxDecoration(
                  color: index == currentIndex
                      ? AppColors.primaryColor
                      : AppColors.primaryColor.withOpacity(0.5),
                  borderRadius: currentIndex == index
                      ? BorderRadius.circular(15)
                      : BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    index == currentIndex ? "All" : "Category $index",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: "Cairo",
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: index == currentIndex
                            ? screenWidth * 0.035 // Responsive font size
                            : screenWidth * 0.03 // Responsive font size
                        ),
                  ),
                ),
              ),
            ),
            separatorBuilder: (context, index) =>
                const VerticalDivider(color: Colors.grey, thickness: 1),
          ),
        ),
        Divider(color: Colors.grey[400], thickness: 1),
        SizedBox(height: screenHeight * 0.02), // Responsive spacing
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
            child: _buildHomeList(context, screenWidth),
          ),
        ),
        SizedBox(
            height: screenHeight * 0.09), // Responsive spacing at the bottom
      ],
    );
  }

  // Responsive grid with dynamic column count
  Widget _buildHomeList(BuildContext context, double screenWidth) {
/*     // Determine the number of columns based on screen width
    int crossAxisCount = (screenWidth / 500).floor(); // Each item ~200px wide
    crossAxisCount =
        crossAxisCount < 1 ? 1 : crossAxisCount; */ // At least 1 column

    return ListView.builder(
      itemCount: screens.length,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) => ItemNews(
        news: news[index],
        press: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ArticleDetailsScreen(news: news[index]),
          ),
        ),
      ),
    );

/*     GridView.builder(
      itemCount: news.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio:
            screenWidth / (screenWidth * 1.5), // Responsive aspect ratio
      ),
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return ItemNews(
          news: news[index],
          press: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ArticleDetailsScreen(news: news[index]),
            ),
          ),
        );
      },
    ); */
  }
}
 */


import 'package:el3asema_news/core/const/colors.dart';
import 'package:el3asema_news/core/const/imports.dart';
import 'package:el3asema_news/feature/art_screen/presentation/screen/art.dart';
import 'package:el3asema_news/feature/home_screen/data/models/local_models/news.dart';
import 'package:el3asema_news/feature/home_screen/presentation/screen/details_screen.dart';
import 'package:el3asema_news/feature/home_screen/presentation/shared/item_news.dart';
import 'package:el3asema_news/feature/movie_screen/presentation/screen/movie_screen.dart';
import 'package:el3asema_news/feature/sport_screen/presentation/screen/sport_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  /// Track the currently selected screen

  // Define your screens here
  List<Widget> screens = [
    const MoviesScreen(),
    const ArtScreen(),
    const SportScreen(),
  ];

  List<String> categories = [
    "All",
    "Movies",
    "Art",
    "Sport",
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: _buildAppBar(screenWidth),
      body: _buildBody(context, screenWidth, screenHeight),
    );
  }

  // AppBar with responsive sizing for the logo and icons
  AppBar _buildAppBar(double screenWidth) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      title: Image.asset(
        "assets/images/logo.png",
        fit: BoxFit.contain,
        scale: AppSizes.blockSizeHorizontal * 5,
      ),
      leading: IconButton(
        icon: Image.asset(
          "assets/icons/back.png",
          scale: AppSizes.blockSizeHorizontal * 5,
        ),
        onPressed: () {
          // Add back navigation logic (if needed)
        },
      ),
      actions: [
        IconButton(
          icon: Image.asset(
            "assets/icons/search.png",
            width: screenWidth * 0.07, // Responsive width for the search icon
          ),
          onPressed: () {
            // Add search functionality
          },
        ),
        SizedBox(width: screenWidth * 0.02), // Responsive spacing
      ],
    );
  }

  // Body with dynamic content based on selected category
  Widget _buildBody(
      BuildContext context, double screenWidth, double screenHeight) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: screenHeight * 0.02), // Responsive spacing

        // Category Selector
        Container(
          height: screenHeight * 0.03, // Responsive height
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
          child: ListView.separated(
            itemCount: screens.length + 1, // +1 for "All"
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                setState(() {
                  currentIndex = index;
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
                width: index == 0
                    ? screenWidth * 0.1
                    : screenWidth * 0.25, // Responsive width
                decoration: BoxDecoration(
                  color: index == currentIndex
                      ? AppColors.primaryColor
                      : AppColors.primaryColor.withOpacity(0.5),
                  borderRadius: index == 0
                      ? BorderRadius.circular(20)
                      : BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    categories[index],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: index == currentIndex
                          ? FontWeight.bold
                          : FontWeight.w400,
                      fontSize: screenWidth * 0.03, // Responsive font size
                    ),
                  ),
                ),
              ),
            ),
            separatorBuilder: (context, index) =>
                VerticalDivider(color: Colors.grey[400], thickness: 1),
          ),
        ),
        Divider(color: Colors.grey[400], thickness: 1),
        SizedBox(height: screenHeight * 0.02), // Responsive spacing

        // Content Area (Displays different content based on currentIndex)
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
            child: _buildContent(context, screenWidth),
          ),
        ),
        SizedBox(
            height: screenHeight * 0.09), // Responsive spacing at the bottom
      ],
    );
  }

  // Build Content based on selected category
  Widget _buildContent(BuildContext context, double screenWidth) {
    if (currentIndex == 0) {
      // Show all news (or a combination)
      return _buildHomeList(context, screenWidth);
    } else {
      // Show content specific to the selected category (index - 1)
      return screens[currentIndex - 1];
    }
  }

  // Responsive grid for "All" news
  Widget _buildHomeList(BuildContext context, double screenWidth) {
    return ListView.builder(
      itemCount: news.length, // Assuming you have a 'news' list
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) => ItemNews(
        news: news[index],
        press: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ArticleDetailsScreen(news: news[index]),
          ),
        ),
      ),
    );
  }
}

// Placeholder screen for categories (replace with your actual screens)
class PlaceholderScreen extends StatelessWidget {
  final String title;

  const PlaceholderScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        title,
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}
