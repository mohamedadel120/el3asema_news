/* import 'package:el3asema_news/core/routes/routes_cosnt.dart';
import 'package:el3asema_news/core/shared_widget/custom_text_form.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  final phoneController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  SizedBox(height: constraints.maxHeight * 0.1),
                  Image.asset(
                    "assets/images/logo.png",
                    height: 100,
                  ),
                  SizedBox(height: constraints.maxHeight * 0.1),
                  Text(
                    "Sign In",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: constraints.maxHeight * 0.05),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        CustomFormField(
                          hintText: 'Phone ',
                          controller: phoneController,
                        ),
                        CustomFormField(
                          hintText: 'Password',
                          controller: passwordController,
                          obscureText: true,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                              // Navigate to the main screen
                              Navigator.pushReplacementNamed(
                                  context, Routes.bottomNavScreen);
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: const Color(0xFF000000),
                            foregroundColor: Colors.white,
                            minimumSize: const Size(double.infinity, 48),
                            shape: const StadiumBorder(),
                          ),
                          child: const Text("Sign in"),
                        ),
                        const SizedBox(height: 16.0),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forgot Password?',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .color!
                                      .withOpacity(0.64),
                                ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, Routes.signUpScreen);
                          },
                          child: Text.rich(
                            const TextSpan(
                              text: "Don’t have an account? ",
                              children: [
                                TextSpan(
                                  text: "Sign Up",
                                  style: TextStyle(color: Color(0xFF000000)),
                                ),
                              ],
                            ),
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .color!
                                      .withOpacity(0.64),
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
} */
/* 
import 'package:flutter/material.dart';
import 'package:el3asema_news/core/routes/routes_cosnt.dart';
import 'package:el3asema_news/core/shared_widget/custom_text_form.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  // Controllers
  final _formKey = GlobalKey<FormState>();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    // Dispose controllers to free memory
    _phoneController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  SizedBox(height: constraints.maxHeight * 0.1),
                  _buildLogo(),
                  SizedBox(height: constraints.maxHeight * 0.05),
                  _buildTitle(theme),
                  SizedBox(height: constraints.maxHeight * 0.05),
                  _buildSignInForm(context, theme),
                  const SizedBox(height: 16.0),
                  _buildForgotPasswordButton(context, theme),
                  _buildSignUpPrompt(context, theme),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildLogo() {
    return Image.asset(
      "assets/images/logo.png",
      height: 100,
    );
  }

  Widget _buildTitle(ThemeData theme) {
    return Text(
      "Sign In",
      style: theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildSignInForm(BuildContext context, ThemeData theme) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomFormField(
            hintText: 'Phone',
            controller: _phoneController,
            keyboardType: TextInputType.phone,
          ),
          const SizedBox(height: 16.0),
          CustomFormField(
            hintText: 'Password',
            controller: _passwordController,
            obscureText: true,
          ),
          const SizedBox(height: 24.0),
          _buildSignInButton(context),
        ],
      ),
    );
  }

  Widget _buildSignInButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          _formKey.currentState!.save();

          // Navigate to the main screen
          Navigator.pushReplacementNamed(context, Routes.bottomNavScreen);
        }
      },
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: const Color(0xFF000000),
        foregroundColor: Colors.white,
        minimumSize: const Size(double.infinity, 48),
        shape: const StadiumBorder(),
      ),
      child: const Text("Sign in"),
    );
  }

  Widget _buildForgotPasswordButton(BuildContext context, ThemeData theme) {
    return TextButton(
      onPressed: () {
        // TODO: Implement Forgot Password Navigation
      },
      child: Text(
        'Forgot Password?',
        style: theme.textTheme.bodyMedium!.copyWith(
          color: theme.textTheme.bodyLarge!.color!.withOpacity(0.64),
        ),
      ),
    );
  }

  Widget _buildSignUpPrompt(BuildContext context, ThemeData theme) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, Routes.signUpScreen);
      },
      child: Text.rich(
        TextSpan(
          text: "Don’t have an account? ",
          children: [
            TextSpan(
              text: "Sign Up",
              style: const TextStyle(color: Color(0xFF000000)),
            ),
          ],
        ),
        style: theme.textTheme.bodyMedium!.copyWith(
          color: theme.textTheme.bodyLarge!.color!.withOpacity(0.64),
        ),
      ),
    );
  }
}
 */

import 'package:el3asema_news/feature/auth/presentation/shared/build_logo.dart';
import 'package:el3asema_news/feature/auth/presentation/shared/sign_in_form.dart';
import 'package:el3asema_news/feature/auth/presentation/shared/sign_up_button.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  // Controllers
  final _formKey = GlobalKey<FormState>();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _phoneController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

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
                const SizedBox(height: 60.0),
                const BuildLogo(),
                const SizedBox(height: 20.0),
                _buildTitle(theme),
                const SizedBox(height: 20.0),
                SignInForm(
                  phoneController: _phoneController,
                  passwordController: _passwordController,
                  formKey: _formKey,
                ),
                const SizedBox(height: 20.0),
                _buildForgotPasswordButton(theme),
                const SizedBox(height: 10.0),
                SignUpButton(theme: theme,),
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
}
