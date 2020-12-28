import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../mood_pages/MoodPage2Emotions.dart';
import '../mood_pages/MoodPage4Text.dart';
import '../mood_pages/MoodPage3Scale.dart';

class MoodTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.lightBlueAccent[100],
        body: Center(
          child: Container(child: MyStatefulWidget()),
        ));
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RaisedButton(
              child: Icon(
                Icons.sentiment_very_satisfied,
                size: 100,
              ),
              color: Colors.greenAccent.shade100,
              onPressed: () {
                navigateToPage3(context);
              },
            ),
            RaisedButton(
              child: Icon(
                Icons.sentiment_neutral,
                size: 100,
              ),
              color: Colors.yellowAccent.shade100,
              padding: EdgeInsets.fromLTRB(50, 50, 50, 50),
              onPressed: () {
                navigateToPage4(context);
              },
            ),
            RaisedButton(
              child: Icon(
                Icons.sentiment_very_dissatisfied,
                size: 100,
              ),
              color: Colors.redAccent.shade100,
              onPressed: () {
                navigateToPage2(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

Future navigateToPage2(context) async {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => MoodPage2Emotions()));
}

Future navigateToPage3(context) async {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => MoodPage3Scale()));
}

Future navigateToPage4(context) async {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => MoodPage4Text()));
}
