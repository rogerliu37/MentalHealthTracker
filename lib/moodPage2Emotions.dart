import 'package:demo3rdwheelhp/moodPage3Scale.dart';
import 'package:flutter/material.dart';

/*
  Bool values for checkListTiles
 */
bool _checked = false;
bool _checked1 = false;
bool _checked2 = false;
bool _checked3 = false;
bool _checked4 = false;
bool _checked5 = false;
bool _checked6 = false;
bool _checked7 = false;
bool _checked8 = false;
bool _checked9 = false;
bool _checked10 = false;
bool _checked11 = false;

class moodPage2Emotions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Color(0xffE5E5E5),
        appBar: new AppBar(
          title:
              Image.asset('images/cat.jpeg', fit: BoxFit.cover, height: 150.0),
          backgroundColor: Colors.amberAccent[200],
        ),
        body: Center(
          child: Container(
//              decoration: BoxDecoration(
//                  image: DecorationImage(
//                      image: AssetImage('images/cat.jpeg'), fit: BoxFit.cover)),
              child: MyStatefulWidget()),
        )
    );
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CheckboxListTile(
            title: Text("Mad"),
            secondary: Icon(Icons.sentiment_very_dissatisfied),
            controlAffinity: ListTileControlAffinity.leading,
            value: _checked,
            onChanged: (bool value) {
              setState(() {
                _checked = value;
              });
            },
            activeColor: Colors.redAccent,
            checkColor: Colors.black,
          ),
          CheckboxListTile(
            title: Text("Sad"),
            controlAffinity: ListTileControlAffinity.leading,
            value: _checked1,
            onChanged: (bool value) {
              setState(() {
                _checked1 = value;
              });
            },
            activeColor: Colors.redAccent,
            checkColor: Colors.black,
          ),
          CheckboxListTile(
            title: Text("Anxious/Stressed"),
            secondary: Icon(Icons.sentiment_dissatisfied),
            controlAffinity: ListTileControlAffinity.leading,
            value: _checked2,
            onChanged: (bool value) {
              setState(() {
                _checked2 = value;
              });
            },
            activeColor: Colors.redAccent,
            checkColor: Colors.black,
          ),

          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 10.0),
            child: RaisedButton(
              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                if (_formKey.currentState.validate()) {
                  // Process data.
                  //Goes to next subpage
                  navigateToPage3(context);
                }
              },
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}

Future navigateToPage3(context) async {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => moodPage3Scale()));
}
