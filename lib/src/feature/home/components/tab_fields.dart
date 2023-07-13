import 'package:bloc_signin_test/src/constants.dart';
import 'package:flutter/material.dart';

class TabFields extends StatelessWidget {
  const TabFields({
    Key? key,
    required TabController? tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController? _tabController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 0,
          vertical: 0,
        ),
        child: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          controller: _tabController,
          children: [
            Center(
              child: Text("No Content", style: TextStyle(
                color: AppConstants.kWhiteColor,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),),
            ),
            const BotTab(),
          ],
        ),
      ),
    );
  }
}

class BotTab extends StatelessWidget {
  const BotTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: const [
        BotCard(isActive: true,),
        BotCard(
          isActive: false,
        ),
        BotCard(isActive: true,),
        BotCard(isActive: false,),
        BotCard(isActive: true,),
        BotCard(isActive: false,),
        BotCard(isActive: true,),
        BotCard(isActive: false,),
        BotCard(isActive: false,),
      ],
    );
  }
}

class BotCard extends StatelessWidget {
  const BotCard({
    super.key, this.isActive = true,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: AppConstants.kSecondaryColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "EMA Cross 50 200 + ADX\n(Long)",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: AppConstants.kWhiteColor,
                ),
              ),
              SizedBox(height: 15),
              Text(
                "Distribution Bot",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppConstants.kGreyColor,
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: BoxDecoration(
              color:AppConstants.activeColor.withOpacity(.2),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 4,
                  backgroundColor: isActive
                      ? AppConstants.activeColor
                      : AppConstants.kGreyColor,
                ),
                const SizedBox(width: 10),
                Text(
                  isActive ? "Active" : "Inactive",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: isActive
                        ? AppConstants.activeColor
                        : AppConstants.kGreyColor,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
