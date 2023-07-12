import 'package:flutter/material.dart';

import '../../../constants.dart';


class NoAccount extends StatelessWidget {
  const NoAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text(
          'Don\'t have an account?',
          style: TextStyle(color: AppConstants.kGreyColor, fontSize: 14),
        ),
        SizedBox(width: 4),
        Text(
          'Sign up',
          style: TextStyle(
            color: AppConstants.kButtonColor,
            fontWeight: FontWeight.w600,
            fontSize: 14
          ),
        ),
      ],
    );
  }
}