import 'package:el3asema_news/core/const/imports.dart';
import 'package:el3asema_news/feature/home_screen/data/models/local_models/news.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({super.key, required this.news});

  final News news;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            news.title,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: const Color(0xFF000000), fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 50),
          Row(
            children: [
              Expanded(
                child: Image.asset(
                  news.image,
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
