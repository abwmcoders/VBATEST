import 'package:bloc_signin_test/src/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'components/home_extension.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const CircleAvatar(
          radius: 40,
          backgroundColor: AppConstants.kWhiteColor,
          backgroundImage: AssetImage(AppConstants.profile),
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
                fontSize: 14,
                fontWeight: FontWeight.w300,
                color: AppConstants.kWhiteColor,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {
                if (kDebugMode) {
                  print("Notification icon pressed");
                }
              },
              icon: Image.asset(AppConstants.not))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const DashboardCard(),
              const SizedBox(height: 20),
              CryptoScrolling(),
              const SizedBox(height: 20),
              const TabArea(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const ButtomNavWidget(),
    );
  }
}
