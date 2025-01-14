import 'package:el3asema_news/core/const/imports.dart';
import 'package:el3asema_news/feature/sport_screen/data/models/local_models/sport_model.dart';
import 'package:el3asema_news/feature/sport_screen/presentation/screen/sport_details_screen.dart';
import 'package:el3asema_news/feature/sport_screen/presentation/shared/item_sport.dart';

class SportScreen extends StatelessWidget {
  const SportScreen({super.key});

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
              itemCount: sport.length, // Assuming you have a 'movies' list
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => ItemSport(
                sport: sport[index],
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SportDetailsScreen(
                      sport: sport[index],
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
