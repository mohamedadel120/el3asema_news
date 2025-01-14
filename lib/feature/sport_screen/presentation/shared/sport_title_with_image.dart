import 'package:el3asema_news/core/const/imports.dart';
import 'package:el3asema_news/feature/sport_screen/data/models/local_models/sport_model.dart';

class SportTitleWithImage extends StatelessWidget {
  const SportTitleWithImage({super.key, required this.sport});

  final Sport sport;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            sport.title,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: const Color(0xFF000000), fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 50),
          Row(
            children: [
              Expanded(
                child: Image.asset(
                  sport.image,
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
