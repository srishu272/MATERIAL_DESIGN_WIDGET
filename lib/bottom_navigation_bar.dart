import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget {
  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar>
    with SingleTickerProviderStateMixin {
  List<Widget> _tabs = [];

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
      bottomNavigationBar: Material(
          color: Colors.green,
          child: TabBar(
            controller: tabController,
            tabs: [
              Tab(
                icon: Icon(Icons.directions_bike_sharp),
              ),
              Tab(
                icon: Icon(Icons.directions_car_sharp),
              ),
            ],
          )),
    );
  }
}
