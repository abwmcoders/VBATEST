import 'package:flutter/material.dart';

import 'home_extension.dart';



class TabArea extends StatefulWidget {
  const TabArea({
    super.key,
  });

  @override
  State<TabArea> createState() => _TabAreaState();
}

class _TabAreaState extends State<TabArea> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TabHeadind(tabController: _tabController),
          SizedBox(height: 20),
          TabFields(tabController: _tabController)
        ],
      ),
    );
  }
}
