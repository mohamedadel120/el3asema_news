import 'package:el3asema_news/feature/art_screen/data/models/local_models/fashion_model.dart';
import 'package:flutter/material.dart';

class ItemFashion extends StatelessWidget {
  const ItemFashion({super.key, required this.fashion, required this.press});

  final Fashion fashion;
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
                  // Fashion Image with dynamic height and width
                  Container(
                    height: screenHeight * 0.37,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: fashion.color,
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
                        fashion.image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  const SizedBox(height: 5), // Spacing between image and title

                  // Fashion Title
                  Text(
                    fashion.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18, // Adjusted for better readability
                      color: Color(0xFF1D1D1D),
                    ),
                    maxLines: 2, // Limit title lines
                    overflow: TextOverflow
                        .ellipsis, // Add ellipsis if title is too long
                  ),

                  const SizedBox(
                      height: 8), // Spacing between title and description

                  // Fashion Description
                  Text(
                    fashion.description,
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 14,
                    ),
                    maxLines: 5, // Limit description lines
                    overflow: TextOverflow
                        .ellipsis, // Add ellipsis if text is too long
                  ),

                  SizedBox(height: screenHeight * 0.02),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
