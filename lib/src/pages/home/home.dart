import 'package:bloc_signin_test/src/constants.dart';
import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: CircleAvatar(
          radius: 40,
          backgroundColor: AppConstants.kWhiteColor,
        ),
        centerTitle: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
           Text(
              "Hey, jacobs",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: AppConstants.kWhiteColor,
              ),
            ),
          SizedBox(height: 5),
           Text(
              "Welcome back",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w300,
                color: AppConstants.kGreyColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}