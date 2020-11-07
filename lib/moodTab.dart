import 'package:demo3rdwheelhp/moodPage2Emotions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'moodPage4Text.dart';
import 'moodPage3Scale.dart';
import 'moodPage2Emotions.dart';

class moodTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.lightBlueAccent[100],
        body: Center(
          child: Container(
//              decoration: BoxDecoration(
//
//                  image: DecorationImage(
//                      image: AssetImage('images/cat.jpeg'), fit: BoxFit.cover)),
              child: MyStatefulWidget()),
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
              //padding: EdgeInsets.fromLTRB(25, 25, 25, 25),
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
              //padding: EdgeInsets.fromLTRB(50, 50, 50, 50),
              // onPressed: () {
              //   navigateToPage4(context);
              // },
            ),
            RaisedButton(
              child: Icon(
                Icons.sentiment_very_dissatisfied,
                size: 100,
              ),
              color: Colors.redAccent.shade100,
              // padding: EdgeInsets.fromLTRB(50, 50, 50, 50),
              onPressed: () {
                navigateToPage2(context);
              },
            ),
//            Padding(
//              padding:
//                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 10.0),
//              child: RaisedButton(
//                onPressed: () {
//                  // Validate will return true if the form is valid, or false if
//                  // the form is invalid.
//                  /*
//                    Time
//                    What they did
//                    Good or bad mood
//                   */
//                  if (_formKey.currentState.validate()) {
//                    // Process data.
//                    //Goes to next subpage
//                    navigateToSubPage1(context);
//
//                    //Sort the data
//                    //TODO: Backend Sorting Data
//                  }
//                },
//                child: Text('Submit'),
//              ),
//            ),
          ],
        ),
      ),
    );
  }
}

Future navigateToPage2(context) async {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => moodPage2Emotions()));
}

Future navigateToPage3(context) async {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => moodPage3Scale()));
}

// Future navigateToPage4(context) async {
//   Navigator.push(
//       context, MaterialPageRoute(builder: (context) => moodPage4Text()));
// }
