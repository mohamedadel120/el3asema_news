import 'package:el3asema_news/core/routes/routes_cosnt.dart';
import 'package:flutter/material.dart';

class SignInForm extends StatelessWidget {
final TextEditingController phoneController;
  final TextEditingController passwordController;
  final GlobalKey<FormState> formKey;
 const SignInForm({super.key,
    required this.phoneController,
    required this.passwordController,
    required this.formKey,
    });
 

  @override
  Widget build(BuildContext context) {
        return Form(
      key: formKey,
      child: Column(
        children: [
          // Phone Number Input
          TextFormField(
            controller: phoneController,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.phone, color: Colors.black54),
              labelText: 'Phone Number',
              hintText: 'Enter your phone number',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: const BorderSide(color: Colors.black54),
              ),
            ),
            validator: (value) =>
                value!.isEmpty ? 'Please enter your phone number' : null,
          ),
          const SizedBox(height: 16.0),

          // Password Input
          TextFormField(
            controller: passwordController,
            obscureText: true,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.lock, color: Colors.black54),
              labelText: 'Password',
              hintText: 'Enter your password',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: const BorderSide(color: Colors.black54),
              ),
            ),
            validator: (value) =>
                value!.isEmpty ? 'Please enter your password' : null,
          ),
          const SizedBox(height: 24.0),

          // Sign-in Button
          ElevatedButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                Navigator.pushReplacementNamed(context, Routes.bottomNavScreen);
              }
            },
            style: ElevatedButton.styleFrom(
              elevation: 5,
              backgroundColor: const Color(0xFF000000),
              foregroundColor: Colors.white,
              minimumSize: const Size(double.infinity, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
            child: const Text("Sign in"),
          ),
        ],
      ),
    );
  }
}