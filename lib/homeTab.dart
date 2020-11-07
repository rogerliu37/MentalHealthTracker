import 'package:flutter/material.dart';

class homeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.lightBlueAccent[100],
        body: Container(
          child: Center(
            child: Text("This is a homepage"),
          ),
        ));
  }
}
