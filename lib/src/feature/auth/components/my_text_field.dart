import 'package:flutter/material.dart';

import '../../../constants.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  final Widget? icon;
  final TextInputType? type;

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText, 
    this.icon,
    this.type,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: type,
      style: const TextStyle(
        color: AppConstants.kWhiteColor,
        fontSize: 15,
        fontWeight: FontWeight.w500,
      ),
      decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide.none,
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide.none,
          ),
          fillColor: AppConstants.scaffoldBackground,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(color: AppConstants.kGreyColor),
          suffixIcon: icon,
          ),
    );
  }
}
