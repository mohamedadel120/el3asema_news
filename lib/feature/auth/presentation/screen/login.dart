import 'package:el3asema_news/core/const/styles.dart';
import 'package:el3asema_news/core/helpers/spacing.dart';
import 'package:el3asema_news/core/shared_widget/app_text_button.dart';
import 'package:el3asema_news/feature/auth/logic/cubit/login_cubit.dart';
import 'package:el3asema_news/feature/auth/presentation/shared/build_logo.dart';
import 'package:el3asema_news/feature/auth/presentation/shared/login_bloc_listener.dart';
import 'package:el3asema_news/feature/auth/presentation/shared/phone_and_password.dart';
import 'package:el3asema_news/feature/auth/presentation/shared/sign_up_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
          decoration: const BoxDecoration(),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               verticalSpace( 60.0),
                const BuildLogo(),
               verticalSpace( 20.0),
                _buildTitle(theme),
               verticalSpace( 20.0),
                const PhoneAndPassowrd(),
                verticalSpace(36),
                AppTextButton(
                  buttonText: "Login",
                  textStyle: TextStyles.font16WhiteSemiBold,
                  onPressed: () {
                    validateThenDoLogin(context);
                  },
                ),
                 verticalSpace( 20.0),
                _buildForgotPasswordButton(theme),
                 verticalSpace( 10.0),
                 const LoginBlocListener(),
                 verticalSpace( 10.0),
                SignUpButton(
                  theme: theme,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Title Section
  Widget _buildTitle(ThemeData theme) {
    return Text(
      "Sign In",
      style: theme.textTheme.headlineMedium!.copyWith(
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
    );
  }

  // Forgot Password Button
  Widget _buildForgotPasswordButton(ThemeData theme) {
    return TextButton(
      onPressed: () {
        // TODO: Implement Forgot Password Navigation
      },
      child: Text(
        'Forgot Password?',
        style: theme.textTheme.bodyMedium!.copyWith(
          color: Colors.black54,
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().login();
    }
  }
}
