import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import '../data_models/Data.dart';

class MoodPage5Notification extends StatelessWidget {
  final Data data;
  MoodPage5Notification({this.data});
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
          child: Container(child: LocalNotifications(data)),
        ));
  }
}

class LocalNotifications extends StatefulWidget {
  Data data;
  LocalNotifications(Data data) {
    this.data = data;
  }
  // LocalNotifications({Key key}) : super(key: key);

  @override
  _LocalNotificationsState createState() => _LocalNotificationsState(data);
}

class _LocalNotificationsState extends State<LocalNotifications> {
  Data data;
  _LocalNotificationsState(Data data) {
    this.data = data;
  }

  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  AndroidInitializationSettings androidInitializationSettings;
  IOSInitializationSettings iosInitializationSettings;
  InitializationSettings initializationSettings;
  void initializing() async {
    androidInitializationSettings = AndroidInitializationSettings('app_icon');
    iosInitializationSettings = IOSInitializationSettings(
        onDidReceiveLocalNotification: onDidReceiveLocalNotification);
    initializationSettings = InitializationSettings(
        androidInitializationSettings, iosInitializationSettings);
    await flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onSelectNotification: onSelectNotification);
  }

  @override
  void initState() {
    super.initState();
    initializing();
  }

  void _scheduleANotification() async {
    await scheduleANotification();
  }

  Future<void> scheduleANotification() async {
    var scheduledNotificationDateTime = DateTime.now().add(Duration(days: 1));
    var androidPlatformChannelSpecifics = AndroidNotificationDetails(
        'your other channel id',
        'your other channel name',
        'your other channel description');
    var iOSPlatformChannelSpecifics = IOSNotificationDetails();
    NotificationDetails platformChannelSpecifics = NotificationDetails(
        androidPlatformChannelSpecifics, iOSPlatformChannelSpecifics);
    await flutterLocalNotificationsPlugin.schedule(
        0,
        'Here\'s a reminder to stay happy!',
        data.mood,
        scheduledNotificationDateTime,
        platformChannelSpecifics);
  }

  Future onSelectNotification(String payLoad) {
    if (payLoad != null) {
      print(payLoad);
    }
  }

  Future onDidReceiveLocalNotification(
      int id, String title, String body, String payload) async {
    return CupertinoAlertDialog(
      title: Text(title),
      content: Text(body),
      actions: <Widget>[
        CupertinoDialogAction(
            isDefaultAction: true,
            onPressed: () {
              print("");
            },
            child: Text("Okay")),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    print(data.text);
    print(data.mood);
    return Scaffold(
      body: Container(
        color: Colors.lightBlueAccent[100],
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              color: Colors.blue,
              onPressed: () {
                _scheduleANotification();
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Schedule a notification",
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
