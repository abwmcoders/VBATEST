import 'package:flutter/material.dart';

import '../../../constants.dart';



class DashboardCard extends StatelessWidget {
  const DashboardCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        image: const DecorationImage(
            image: AssetImage(
              AppConstants.bg,
            ),
            fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(20),
        color: Colors.transparent,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Wallet",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w200,
                  color: AppConstants.kWhiteColor,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: AppConstants.kWhiteColor,
                      width: 1,
                    )),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Image.asset(AppConstants.binance),
                        const SizedBox(width: 5),
                        const Text(
                          "Binance",
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w200,
                            color: AppConstants.kWhiteColor,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 10),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_downward_sharp,
                          size: 30,
                          color: AppConstants.kWhiteColor,
                        ))
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 35),
          const Text(
            "Account Balance",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w200,
              color: AppConstants.kWhiteColor,
            ),
          ),
          const SizedBox(height: 25),
          const Text(
            '\$ 12 480.00',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: AppConstants.kWhiteColor,
            ),
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
