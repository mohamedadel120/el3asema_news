import 'package:el3asema_news/core/const/imports.dart';
import 'package:el3asema_news/feature/art_screen/data/models/local_models/fashion_model.dart';
import 'package:el3asema_news/feature/art_screen/presentation/screen/fashion_details_screen.dart';
import 'package:el3asema_news/feature/art_screen/presentation/shared/item_fashion.dart';

class ArtScreen extends StatelessWidget {
  const ArtScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppSizes().initSizes(context);
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: fashion.length, // Assuming you have a 'movies' list
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => ItemFashion(
                fashion: fashion[index],
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FashionDetailsScreen(
                      fashion: fashion[index],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
