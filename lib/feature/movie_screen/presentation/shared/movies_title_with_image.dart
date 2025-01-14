import 'package:el3asema_news/core/const/imports.dart';
import 'package:el3asema_news/feature/movie_screen/data/models/local_models/movies_model.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({super.key, required this.movies});

  final Movies movies;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            movies.title,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: const Color(0xFF000000), fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 50),
          Row(
            children: [
              Expanded(
                child: Image.asset(
                  movies.image,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
