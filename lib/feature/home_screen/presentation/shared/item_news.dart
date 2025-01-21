import 'package:el3asema_news/feature/home_screen/logic/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:el3asema_news/core/const/imports.dart';

class ItemNews extends StatelessWidget {
  ItemNews(
      {super.key,
      required this.index,
      required this.press,
      required this.cubit});

  final int index;
  final HomeCubit cubit;
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
                color: Colors.grey[300],
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
                child: Image.network(
                  cubit.newsResponse?.articles[index].urlToImage ?? '',
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
                cubit.newsResponse?.articles[index].title ?? 'Title',
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
                cubit.newsResponse!.articles[index].content??'',
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
