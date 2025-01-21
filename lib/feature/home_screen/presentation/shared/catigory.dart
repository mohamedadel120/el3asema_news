// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:el3asema_news/core/const/colors.dart';
import 'package:flutter/material.dart';

import 'package:el3asema_news/feature/art_screen/presentation/screen/art.dart';
import 'package:el3asema_news/feature/movie_screen/presentation/screen/movie_screen.dart';
import 'package:el3asema_news/feature/sport_screen/presentation/screen/sport_screen.dart';

class Catigory extends StatefulWidget {
  final double screenHeight;
  final double screenWidth;
 const Catigory({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });





  @override
  State<Catigory> createState() => _CatigoryState();
}

class _CatigoryState extends State<Catigory> {
     int currentIndex = 0;

  final List<String> categories = [
    "All",
    "Movies",
    "Art",
    "Sport",
  ];

  final List<Widget> screens = [
    const MoviesScreen(),
    const ArtScreen(),
    const SportScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
          height:widget.screenHeight * 0.03, // Responsive height
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: widget.screenWidth * 0.02),
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
                padding: EdgeInsets.symmetric(horizontal: widget.screenWidth * 0.02),
                width: index == 0
                    ? widget.screenWidth * 0.1
                    : widget.screenWidth * 0.25, // Responsive width
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
                      fontSize: widget.screenWidth * 0.03, // Responsive font size
                    ),
                  ),
                ),
              ),
            ),
            separatorBuilder: (context, index) =>
                VerticalDivider(color: Colors.grey[400], thickness: 1),
          ),
        );
  }
}