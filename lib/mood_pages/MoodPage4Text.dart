import 'package:flutter/material.dart';
import 'MoodPage5Notification.dart';
import '../data_models/Data.dart';

class MoodPage4Text extends StatelessWidget {
  final Data data;
  MoodPage4Text({this.data});
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
            child: MyStatefulWidget(data),
          ),
        ));
  }
}

class MyStatefulWidget extends StatefulWidget {
  Data data;
  MyStatefulWidget(Data data) {
    this.data = data;
  }

  @override
  _MyStatefulWidgetState createState() => new _MyStatefulWidgetState(this.data);
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  Data data;
  _MyStatefulWidgetState(Data data) {
    this.data = data;
  }
  final _formKey = GlobalKey<FormState>();
  List<String> promptText = List<String>();

  @override
  Widget build(BuildContext context) {
    final _textController = TextEditingController();
    promptText.add('Prompt text inputed here ');
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 20.0),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                  child: Text(
                promptText[0],
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold),
              )),
            ),
          ),
          SizedBox(height: 10.0),
          Flexible(
            child: Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: TextFormField(
                controller: _textController,
                style: TextStyle(color: Colors.black),
                decoration: const InputDecoration(
                  icon: Icon(Icons.lightbulb_outline),
                  hintText: 'Type your response here',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 10.0),
            child: RaisedButton(
              onPressed: () {
                data.text = _textController.text;
                navigateToPage5(context, data);
              },
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}

Future navigateToPage5(context, data) async {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => MoodPage5Notification(
        data: data,
      ),
    ),
  );
}
