import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'home_extension.dart';


class CryptoScrolling extends StatelessWidget {
  CryptoScrolling({
    super.key,
  });
 final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      height: 190,
      child: Scrollbar(
        isAlwaysShown: true,
        controller: _scrollController,
        child: ListView.builder(
            shrinkWrap: true,
            controller: _scrollController,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: cryptoItems.length,
            itemBuilder: (context, index) => Container(
                  margin: const EdgeInsets.only(
                      left: 10, right: 10, bottom: 20, top: 10),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppConstants.kSecondaryColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: cryptoItems[index].color),
                        child: Center(
                          child: Image.asset(cryptoItems[index].imageUrl),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        cryptoItems[index].title,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppConstants.kWhiteColor,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        cryptoItems[index].price,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: AppConstants.kWhiteColor,
                        ),
                      ),
                    ],
                  ),
                )),
      ),
    );
  }
}
