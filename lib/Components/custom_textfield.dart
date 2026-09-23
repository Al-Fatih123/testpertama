import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String myHint;
  final bool obscureText;
  const CustomTextfield({super.key, required this.controller, required this.myHint, required this.obscureText});
  
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        hint: Text(myHint),
      ),
    );
  }
}