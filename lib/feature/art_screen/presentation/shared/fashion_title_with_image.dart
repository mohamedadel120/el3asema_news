import 'package:el3asema_news/core/const/imports.dart';
import 'package:el3asema_news/feature/art_screen/data/models/local_models/fashion_model.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({super.key, required this.fashion});

  final Fashion fashion;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            fashion.title,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: const Color(0xFF000000), fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 50),
          Row(
            children: [
              Expanded(
                child: Image.asset(
                  fashion.image,
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
