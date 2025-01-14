/* // ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:el3asema_news/core/const/imports.dart';
import 'package:el3asema_news/core/shared_widget/counter_fav_btn.dart';

import 'package:el3asema_news/feature/home_screen/data/models/local_models/news.dart';
import 'package:el3asema_news/feature/home_screen/presentation/shared/description.dart';
import 'package:el3asema_news/feature/home_screen/presentation/shared/new_title_with_image.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    super.key,
    required this.news,
  });
  final News news;

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
                ProductTitleWithImage(news: news),
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
                      Description(news: news),
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
import 'package:el3asema_news/feature/home_screen/data/models/local_models/news.dart';
import 'package:flutter/material.dart';
import 'package:el3asema_news/core/const/size_config.dart';
import 'package:el3asema_news/core/shared_widget/counter_fav_btn.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ArticleDetailsScreen extends StatelessWidget {
  const ArticleDetailsScreen({super.key, required this.news});
  final News news; // Assuming "Movies" represents articles here.

  @override
  Widget build(BuildContext context) {
    AppSizes().initSizes(context);
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xFFEEEEEE),
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeaderImage(size),
            _buildArticleContent(),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
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
    );
  }

  Widget _buildHeaderImage(Size size) {
    return Stack(
      children: [
        Container(
          height: size.height * 0.4,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(news.image),
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
              news.title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildArticleContent() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Text(
            news.description * 10,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black87,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 20),
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
    );
  }
}
