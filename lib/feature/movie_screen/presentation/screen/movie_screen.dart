import 'package:flutter/material.dart';
import 'package:el3asema_news/core/const/imports.dart';
import 'package:el3asema_news/feature/movie_screen/data/models/local_models/movies_model.dart';
import 'package:el3asema_news/feature/movie_screen/presentation/screen/details_movies_screen.dart';
import 'package:el3asema_news/feature/movie_screen/presentation/shared/item_moviess.dart';

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.grey[300],
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
        width: screenWidth * 0.15, // Responsive width for the logo
      ),
      leading: IconButton(
        icon: Image.asset(
          "assets/icons/back.png",
          width: screenWidth * 0.05, // Responsive width for the back icon
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: _buildMoviesList(context, screenWidth),
        ),
        // Responsive spacing at the bottom
      ],
    );
  }

  Widget _buildMoviesList(BuildContext context, double screenWidth) {
    return ListView.builder(
      itemCount: movies.length, // Assuming you have a 'movies' list
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) => ItemMovies(
        movies: movies[index],
        press: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ArticleDetailsScreen(
              movies: movies[index],
            ),
          ),
        ),
      ),
    );
  }
}
