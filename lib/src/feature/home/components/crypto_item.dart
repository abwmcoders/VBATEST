import 'package:bloc_signin_test/src/constants.dart';
import 'package:flutter/material.dart';

class Crypto {
  final String imageUrl, title, price;
  final Color color;

  Crypto(
      {required this.imageUrl,
      required this.title,
      required this.price,
      required this.color});
}

List<Crypto> cryptoItems = [
  Crypto(
    imageUrl: AppConstants.btc,
    title: "BTCUSDT",
    price: "36.77 %",
    color: AppConstants.kGreyColor.withOpacity(.2),
  ),
  Crypto(
    imageUrl: AppConstants.eth,
    title: "ETHUSDT",
    price: "24.77 %",
    color: AppConstants.kLightBlue.withOpacity(.3),
  ),
  Crypto(
    imageUrl: AppConstants.cBinance,
    title: "BNBUSDT",
    price: "36.07 %",
    color: AppConstants.kDeepAmber.withOpacity(.2),
  ),
];
