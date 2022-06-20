import 'package:flutter/material.dart';

class MyNavigationBar extends StatefulWidget {
  MyNavigationBar({Key? key}) : super(key: key);

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: tabController,
          tabs: [
            Tab(
              icon: Icon(Icons.directions_bike_sharp),
            ),
            Tab(
              icon: Icon(Icons.directions_car_sharp),
            ),
          ],
        ),
      ),
      body: TabBarView(
        children: [
          Center(
            child: Text("This is the tab for bikes"),
          ),
          Center(
            child: Text("This is the tab for cars"),
          ),
        ],
        controller: tabController,
      ),
    );
  }
}
