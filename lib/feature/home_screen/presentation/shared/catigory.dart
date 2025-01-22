// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:el3asema_news/core/const/colors.dart';


class Catigory extends StatefulWidget {
  final double screenHeight;
  final double screenWidth;
   int currentIndex ;
  final List <Widget> screens;
  final List <String> categories;
   Catigory({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
    required this.currentIndex,
    required this.screens,
    required this.categories,
  }) : super(key: key);





  @override
  State<Catigory> createState() => _CatigoryState();
}

class _CatigoryState extends State<Catigory> {

  @override
  Widget build(BuildContext context) {
    return Container(
          height:widget.screenHeight * 0.03, // Responsive height
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: widget.screenWidth * 0.02),
          child: ListView.separated(
            itemCount: widget.screens.length + 1, // +1 for "All"
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                setState(() {
                widget.currentIndex = index;
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: widget.screenWidth * 0.02),
                width: index == 0
                    ? widget.screenWidth * 0.1
                    : widget.screenWidth * 0.25, // Responsive width
                decoration: BoxDecoration(
                  color: index == widget.currentIndex
                      ? AppColors.primaryColor
                      : AppColors.primaryColor.withOpacity(0.5),
                  borderRadius: index == 0
                      ? BorderRadius.circular(20)
                      : BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                   widget.categories[index],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: index == widget.currentIndex
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