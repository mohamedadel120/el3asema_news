import 'package:flutter/material.dart';

class BuildLogo extends StatelessWidget {
  const BuildLogo({super.key});

  @override
  Widget build(BuildContext context) {
      return Column(
      children: [
        Image.asset(
          "assets/images/logo.png",
          height: 80,
        ),
        const SizedBox(height: 8.0),
        const Text(
          "Welcome Back!",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.black54,
          ),
        ),
      ],
    );
  }
}