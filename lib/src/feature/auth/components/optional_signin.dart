import 'package:bloc_signin_test/src/constants.dart';
import 'package:flutter/material.dart';

class OptionalSignIn extends StatelessWidget {
  const OptionalSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: const [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: AppConstants.kSecondaryColor,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'OR',
                          style: TextStyle(color: AppConstants.kGreyColor, fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: AppConstants.kSecondaryColor,
                        ),
                      ),
                    ],
                  ),
                );
  }
}