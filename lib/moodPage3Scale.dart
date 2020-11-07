import 'package:flutter/material.dart';
import 'moodPage4Text.dart';
import 'Data.dart';

class moodPage3Scale extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.redAccent[700],
        appBar: new AppBar(
          title:
              Image.asset('images/cat.jpeg', fit: BoxFit.cover, height: 150.0),
          backgroundColor: Colors.amberAccent[200],
        ),
        body: Center(
          child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/cat.jpeg'), fit: BoxFit.cover)),
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
  final data = Data(mood: 0, dateTime: DateTime.now(), text: "");
  final _formKey = GlobalKey<FormState>();
  //holds the value of the slider (how emotional the user is)
  var sliderValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        color: Color(0xffE5E5E5),
        child: Column(
          children: <Widget>[
            Container(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                    child: Text(
                  "What would you rate this feeling as?",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold),
                )),
              ),
            ),
            SizedBox(height: 30.0),
            Container(
              child: Align(
                child: Material(
                  color: Colors.white,
                  elevation: 14.0,
                  borderRadius: BorderRadius.circular(24.0),
                  shadowColor: Color(0x802196F3),
                  child: Container(
                      width: 350.0,
                      height: 400.0,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: Slider(
                                min: 0.0,
                                max: 100.0,
                                divisions: 10,
                                value: sliderValue,
                                activeColor: Color(0xffff520d),
                                inactiveColor: Colors.blueGrey,
                                onChanged: (newValue) {
                                  setState(() {
                                    sliderValue = newValue;
                                    data.mood = newValue;
                                  });
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Container(
                                child: Text(
                              "Your Rating: $sliderValue",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                child: Align(
                              alignment: Alignment.bottomCenter,
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(30.0)),
                                color: Color(0xffff520d),
                                child: Text(
                                  'Submit',
                                  style: TextStyle(color: Color(0xffffffff)),
                                ),
                                onPressed: () {
                                  navigateToPage4(context, data);
                                },
                              ),
                            )),
                          ),
                        ],
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Future navigateToPage4(context, data) async {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => moodPage4Text(
        data: data,
      ),
    ),
  );
}
