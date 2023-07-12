import 'package:bloc_signin_test/src/feature/home/home.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key, required this.onTap,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      decoration: BoxDecoration(
        color: AppConstants.kButtonColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: InkWell(
        onTap: onTap,
        child: const Center(
          child: Text(
            "Log In",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: AppConstants.kBlackColor,
            ),
          ),
        ),
      ),
    );
  }
}
