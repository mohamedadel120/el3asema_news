import 'package:el3asema_news/core/const/imports.dart';
import 'package:el3asema_news/feature/home_screen/data/models/local_models/news.dart';

class Description extends StatelessWidget {
  const Description({super.key, required this.news});

  final News news;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Text(
        news.description * 10,
        style: const TextStyle(height: 1.5),
      ),
    );
  }
}
