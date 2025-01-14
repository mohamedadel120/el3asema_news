import 'package:el3asema_news/core/routes/routes_cosnt.dart';
import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  final ThemeData theme;
  const SignUpButton({super.key, required this.theme});

  @override
  Widget build(BuildContext context) {
      return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, Routes.signUpScreen);
      },
      child: RichText(
        text: TextSpan(
          text: "Don’t have an account? ",
          style: theme.textTheme.bodyMedium!.copyWith(
            color: Colors.black54,
          ),
          children: const [
            TextSpan(
              text: "Sign Up",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF000000),
              ),
            ),
          ],
        ),
      ),
    );
  }
}