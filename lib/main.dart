import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Mask Reminder',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Mask Reminder'),
          ),
          body: Align(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                    onPressed: () {
                    },
                    color: Colors.blue,
                    child: Text("Find Location")
                )
              ],
            ),
          ),
        ),
      );
    }
}
