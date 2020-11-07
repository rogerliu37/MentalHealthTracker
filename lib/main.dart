import 'package:flutter/material.dart';
import 'homeTab.dart';
import 'dateTab.dart';
import 'moodTab.dart';
import 'profileTab.dart';

void main() {
  runApp(new MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tabController = new DefaultTabController(
      length: 4,
      child: new Scaffold(
        appBar: new AppBar(
          title:
              Image.asset('images/cat.jpeg', fit: BoxFit.cover, height: 150.0),
          backgroundColor: Colors.redAccent,
        ),
        body: new TabBarView(
          children: [
            new homeTab(),
            new moodTab(),
            new dateTab(),
            new profileTab(),
          ],
        ),
        bottomNavigationBar: Container(
          color: Colors.grey[850],
          child: new TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey[350],
              indicatorSize: TabBarIndicatorSize.label,
              indicatorPadding: EdgeInsets.all(5.0),
              indicatorColor: Colors.white,
              indicatorWeight: 5.0,
              tabs: [
                new Tab(
                    icon: new Icon(
                      Icons.home,
                    ),
                    text: "Home"),
                new Tab(
                  icon: new Icon(Icons.favorite_border),
                  text: "Mood",
                ),
                new Tab(icon: new Icon(Icons.calendar_today), text: "Dates"),
                new Tab(icon: new Icon(Icons.person), text: "Profile"),
              ]),
        ),
      ),
    );
    return new MaterialApp(title: "Tabs Example", home: tabController);
  }
}
