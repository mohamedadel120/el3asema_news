import 'package:el3asema_news/core/const/imports.dart';
import 'package:el3asema_news/feature/movie_screen/data/models/local_models/movies_model.dart';

class Description extends StatelessWidget {
  const Description({super.key, required this.movies});

  final Movies movies;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Text(
        movies.description * 10,
        style: const TextStyle(height: 1.5),
      ),
    );
  }
}
