import 'package:bloc_signin_test/src/constants.dart';
import 'package:flutter/material.dart';


class SocialHandles extends StatelessWidget {
  const SocialHandles({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        HandleRenderer(imagePath: AppConstants.googleIcon,),
        SizedBox(width: 25),
        HandleRenderer(
          imagePath: AppConstants.appleIcon,
        ),
      ],
    );
  }
}


class HandleRenderer extends StatelessWidget {
  final String imagePath;
  const HandleRenderer({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      //height: 40,
    );
  }
}