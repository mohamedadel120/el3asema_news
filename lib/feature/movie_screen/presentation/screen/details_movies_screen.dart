/* import 'package:el3asema_news/core/const/size_config.dart';
import 'package:el3asema_news/core/shared_widget/counter_fav_btn.dart';
import 'package:el3asema_news/feature/movie_screen/data/models/local_models/movies_model.dart';
import 'package:el3asema_news/feature/movie_screen/presentation/shared/description.dart';
import 'package:el3asema_news/feature/movie_screen/presentation/shared/movies_title_with_image.dart';
import 'package:flutter/material.dart';

class DetailsMoviesScreen extends StatelessWidget {
  const DetailsMoviesScreen({super.key, required this.movies});
  final Movies movies;

  @override
  Widget build(BuildContext context) {
    void sizes = AppSizes().initSizes(context);
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      // each product have a color
      backgroundColor: const Color(0xFFEEEEEE),
      appBar: AppBar(
        actions: [
          SizedBox(width: size.width * 0.09),
        ],
        iconTheme: const IconThemeData(color: Colors.black),
        title: Center(child: Image.asset("assets/images/logo.png", scale: 20)),
        backgroundColor: Colors.grey[200],
        elevation: 0,
        leading: IconButton(
          icon: Image.asset(
            'assets/icons/back.png',
            //colorFilter:
            //colorFilter.mode(Color(0xFF000000), BlendMode.srcIn),
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: <Widget>[
            Stack(
              children: [
                ProductTitleWithImage(movies: movies),
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: const EdgeInsets.only(
                    left: 50,
                    right: 50,
                  ),
                  // height: 500,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 50 / 2),
                      Description(movies: movies),
                      const SizedBox(height: 50 / 2),
                      const CounterWithFavBtn(),
                      const SizedBox(height: 50 / 2),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
 */

import 'package:flutter/material.dart';
import 'package:el3asema_news/core/const/size_config.dart';
import 'package:el3asema_news/core/shared_widget/counter_fav_btn.dart';
import 'package:el3asema_news/feature/movie_screen/data/models/local_models/movies_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ArticleDetailsScreen extends StatelessWidget {
  const ArticleDetailsScreen({super.key, required this.movies});
  final Movies movies; // Assuming "Movies" represents articles here.

  @override
  Widget build(BuildContext context) {
    AppSizes().initSizes(context);
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xFFEEEEEE),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: Center(
          child: Image.asset(
            "assets/images/logo.png",
            scale: 20,
          ),
        ),
        backgroundColor: Colors.grey[200],
        elevation: 0,
        leading: IconButton(
          icon: Image.asset('assets/icons/back.png', scale: 20.h),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Article Header Image
            Stack(
              children: [
                Container(
                  height: size.height * 0.4,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(movies.image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 20,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      movies.title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // Article Content
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Text(
                    movies.description * 15,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Favorite and Share Buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CounterWithFavBtn(),
                      IconButton(
                        icon: const Icon(Icons.share, color: Colors.black),
                        onPressed: () {
                          // Implement sharing functionality
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
