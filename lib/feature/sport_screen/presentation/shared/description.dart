import 'package:el3asema_news/core/const/imports.dart';
import 'package:el3asema_news/feature/sport_screen/data/models/local_models/sport_model.dart';

class Description extends StatelessWidget {
  const Description({super.key, required this.sport});

  final Sport sport;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Text(
        sport.description * 10,
        style: const TextStyle(height: 1.5),
      ),
    );
  }
}
