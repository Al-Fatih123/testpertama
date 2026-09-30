import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final TextEditingController controller_kaklulator;
  final String myHint;
  final bool obscureText;
  const CustomTextfield({super.key, required this.controller_kaklulator, required this.myHint, required this.obscureText});
  
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      controller: controller_kaklulator,
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