import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'extensions.dart';



class FormArea extends StatelessWidget {
  const FormArea({
    super.key,
    required this.emailController, required this.passwordController,
  });

  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
        color: AppConstants.kSecondaryColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            "Email Address",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppConstants.kWhiteColor,
            ),
          ),
          const SizedBox(height: 10),
          MyTextField(
            controller: emailController,
            hintText: "you@example.com",
            obscureText: false,
          ),
          const SizedBox(height: 15),
          const Text(
            "Password",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppConstants.kWhiteColor,
            ),
          ),
          const SizedBox(height: 10),
          MyTextField(
            controller: passwordController,
            hintText: "Not less than 8 character",
            obscureText: true,
            icon: Image.asset(AppConstants.hide),
          ),
          const SizedBox(height: 50),
          const AppButton(),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
