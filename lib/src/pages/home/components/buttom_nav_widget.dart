import 'package:flutter/material.dart';

import '../../../constants.dart';




class ButtomNavWidget extends StatelessWidget {
  const ButtomNavWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: SizedBox(
            height: 80,
            child: BottomNavigationBar(
              backgroundColor: AppConstants.kSecondaryColor,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: Image.asset(AppConstants.homeIcon), label: ''),
                BottomNavigationBarItem(
                    icon: Image.asset(AppConstants.categoryIcon), label: ''),
                BottomNavigationBarItem(
                    icon: Image.asset(AppConstants.settingsIcon), label: '')
              ],
            ),
          ),
        ));
  }
}
