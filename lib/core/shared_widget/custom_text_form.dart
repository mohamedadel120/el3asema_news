// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  bool? obscureText;
  TextInputType? keyboardType;
  Widget? prefixIcon;
  Widget? suffixIcon;
  CustomFormField({
    super.key,
    required this.hintText,
    required this.controller,
    this.obscureText,
    this.keyboardType,
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: TextFormField(
        obscureText: obscureText ?? false,
        controller: controller,
        keyboardType: keyboardType ?? TextInputType.text,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          filled: true,
          fillColor: Colors.grey[200],
          contentPadding: const EdgeInsets.symmetric(
              horizontal: 16.0 * 1.5, vertical: 16.0),
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
        ),
        onSaved: (passaword) {
          // Save it
        },
      ),
    );
  }
}