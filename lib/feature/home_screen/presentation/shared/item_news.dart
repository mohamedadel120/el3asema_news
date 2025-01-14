/* import 'package:el3asema_news/core/const/imports.dart';
import 'package:el3asema_news/feature/home_screen/data/models/local_models/news.dart';

class ItemNews extends StatelessWidget {
  const ItemNews({super.key, required this.news, required this.press});

  final News news;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    AppSizes().initSizes(context);
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: press,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: Colors.white.withOpacity(0.8),
        elevation: 2,
        shadowColor: Colors.grey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(50),
                decoration: BoxDecoration(
                  color: news.color,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Card(
                  child: Image.asset(
                    news.image,
                    width: AppSizes.screenWidth * 1,
                    height: height / 3,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: AppSizes.blockSizeVertical * 0.0005,
                    horizontal: AppSizes.blockSizeHorizontal / 4),
                child: Text(
                  // products is out demo list
                  news.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xFF1D1D1D),
                  ),
                ),
              ),
              Positioned(
                top: AppSizes.screenHeight / 2.22,
                right: width / 15,
                left: 0,
                child: Text(
                  news.description,
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
 */
/* 
import 'package:flutter/material.dart';
import 'package:el3asema_news/core/const/imports.dart';
import 'package:el3asema_news/feature/home_screen/data/models/local_models/news.dart';

class ItemNews extends StatelessWidget {
  const ItemNews({super.key, required this.news, required this.press});

  final News news;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Column(
      children: [
        GestureDetector(
          onTap: press,
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: Colors.white.withOpacity(0.8),
            elevation: 5,
            shadowColor: Colors.grey.withOpacity(0.4),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // News Image with dynamic height and width
                  Container(
                    height: screenHeight * 0.44,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: news.color,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 8,
                          offset: const Offset(0, 4), // Shadow offset
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      child: Image.asset(
                        news.image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  const SizedBox(height: 5), // Spacing between image and title

                  // News Title
                  Text(
                    news.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18, // Adjusted for better readability
                      color: Color(0xFF1D1D1D),
                    ),
                    maxLines: 2, // Limit title lines
                    overflow: TextOverflow
                        .ellipsis, // Add ellipsis if title is too long
                  ),

                  const SizedBox(height: 8),
                  // News Description
                  Text(
                    news.description,
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 14,
                    ),
                    maxLines: 3, // Limit description lines
                    overflow: TextOverflow
                        .ellipsis, // Add ellipsis if text is too long
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
 */

import 'package:flutter/material.dart';
import 'package:el3asema_news/core/const/imports.dart';
import 'package:el3asema_news/feature/home_screen/data/models/local_models/news.dart';

class ItemNews extends StatelessWidget {
  const ItemNews({super.key, required this.news, required this.press});

  final News news;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: press,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        color: Colors.white,
        elevation: 5,
        shadowColor: Colors.grey.withOpacity(0.3),
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // News Image
            Container(
              height: screenHeight * 0.44,
              width: double.infinity,
              decoration: BoxDecoration(
                color: news.color,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 6,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
                child: Image.asset(
                  news.image,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => const Icon(
                    Icons.broken_image,
                    size: 50,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10), // Spacing between image and title

            // News Title
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                news.title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Color(0xFF1D1D1D),
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),

            const SizedBox(height: 5),

            // News Description
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                news.description,
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 14,
                  height: 1.5,
                ),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),

            const SizedBox(height: 10), // Spacing at the bottom
          ],
        ),
      ),
    );
  }
}
