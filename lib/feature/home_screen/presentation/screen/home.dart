import 'package:el3asema_news/core/const/colors.dart';
import 'package:el3asema_news/core/const/imports.dart';
import 'package:el3asema_news/core/di/dependency_injection.dart';
import 'package:el3asema_news/core/helpers/spacing.dart';
import 'package:el3asema_news/feature/art_screen/presentation/screen/art.dart';
import 'package:el3asema_news/feature/home_screen/logic/cubit/home_cubit.dart';
import 'package:el3asema_news/feature/home_screen/logic/cubit/home_state.dart';
import 'package:el3asema_news/feature/home_screen/presentation/screen/details_screen.dart';
import 'package:el3asema_news/feature/home_screen/presentation/shared/item_news.dart';
import 'package:el3asema_news/feature/movie_screen/presentation/screen/movie_screen.dart';
import 'package:el3asema_news/feature/sport_screen/presentation/screen/sport_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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

    return BlocProvider(
      create: (context) => HomeCubit(sl())..getNews(),
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: _buildAppBar(screenWidth),
        body: BlocBuilder<HomeCubit, HomeStates>(
          builder: (context, state) {
            final cubit = context.read<HomeCubit>();
            if (state is HomeErrorState) {
              return Center(
                child: Text(
                  state.apiErrorModel.errors.toString(),
                  style: const TextStyle(color: Colors.red),
                ),
              );
            }

            return 
                 _buildBody(cubit, context, screenWidth, screenHeight);
          },
        ),
      ),
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
  Widget _buildBody(HomeCubit cubit, BuildContext context, double screenWidth,
      double screenHeight) {
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
        verticalSpace(screenHeight * 0.02), // Responsive spacing
        Divider(color: Colors.grey[400], thickness: 1),
        verticalSpace(screenHeight * 0.02), // Responsive spacing

        // Content Area (Displays different content based on currentIndex)
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
            child: _buildContent(cubit, context, screenWidth),
          ),
        ),
        verticalSpace(screenHeight * 0.09), // Responsive spacing at the bottom
      ],
    );
  }

  // Build Content based on selected category
  Widget _buildContent(
      HomeCubit cubit, BuildContext context, double screenWidth) {
    if (currentIndex == 0) {
      // Show all news (or a combination)
      return _buildHomeList(cubit, context, screenWidth);
    } else {
      // Show content specific to the selected category (index - 1)
      return screens[currentIndex - 1];
    }
  }

  // Responsive grid for "All" news

  Widget _buildHomeList(
      HomeCubit cubit, BuildContext context, double screenWidth) {
    return ListView.builder(
      itemCount: cubit.newsResponse?.articles.length ??
          5, // Assuming you have a 'news' list
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) => ItemNews(
        cubit: cubit,
        index: index,
        press: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                ArticleDetailsScreen(cubit: cubit, index: index),
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
