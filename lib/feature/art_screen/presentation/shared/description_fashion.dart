import 'package:el3asema_news/core/const/imports.dart';
import 'package:el3asema_news/feature/art_screen/data/models/local_models/fashion_model.dart';

class Description extends StatelessWidget {
  const Description({super.key, required this.fashion});

  final Fashion fashion;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Text(
        fashion.description * 10,
        style: const TextStyle(height: 1.5),
      ),
    );
  }
}
