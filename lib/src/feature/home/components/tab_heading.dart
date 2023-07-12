import 'package:bloc_signin_test/src/constants.dart';
import 'package:flutter/material.dart';



class TabHeadind extends StatelessWidget {
  const TabHeadind({
    Key? key,
    required TabController? tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController? _tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: TabBar(
        indicatorSize: TabBarIndicatorSize.tab,
                  indicatorColor: Colors.transparent,
                  labelColor: AppConstants.kWhiteColor,
                  isScrollable: true,
                  unselectedLabelColor: AppConstants.kGreyColor,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: AppConstants.kSecondaryColor,
                  ),
        // isScrollable: false,
        // indicatorColor: Color(0xFFFFB61D),
        // indicatorWeight: 2,
        // indicatorSize: TabBarIndicatorSize.label,
        // labelColor: Colors.black,
        // unselectedLabelColor: Colors.grey,
        // labelStyle: TextStyle(
        //   fontSize: 17,
        //   fontFamily: "Ep",
        //   fontWeight: FontWeight.bold,
        // ),
        // unselectedLabelStyle: TextStyle(
        //   fontSize: 15,
        //   fontFamily: "Ep",
        //   fontWeight: FontWeight.bold,
        // ),
        controller: _tabController,
        tabs: const [
          Tab(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Signal Groups",
              ),
            ),
          ),
          
          Tab(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Bots",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
