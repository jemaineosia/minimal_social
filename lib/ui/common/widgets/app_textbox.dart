import 'package:flutter/material.dart';

class AppTextbox extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextInputType keyboardType;
  final TextEditingController controller;

  const AppTextbox(
      {super.key,
      required this.hintText,
      this.obscureText = false,
      this.keyboardType = TextInputType.text,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        hintText: hintText,
      ),
      obscureText: obscureText,
      keyboardType: keyboardType,
    );
  }
}
