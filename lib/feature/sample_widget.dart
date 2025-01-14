import 'package:el3asema_news/core/const/imports.dart';

class SampleWidget extends StatelessWidget {
  const SampleWidget({
    super.key,
    required this.label,
    required this.color,
  });

  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            "Place Content of $label Tab Here",
            style: const TextStyle(
              fontSize: 15,
              color: Color(0xFFDEDEDE),
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
