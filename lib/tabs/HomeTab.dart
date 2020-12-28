import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
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
