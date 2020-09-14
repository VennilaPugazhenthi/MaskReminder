import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}
class _AppState extends State<App> {

  String _locationMessage = "";

  void _getCurrentLocation() async {
   final position = await getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
   print(position);
   setState(() {
     _locationMessage = "${position.latitude}, ${position.longitude}";
   });

  }
  @override
  Widget build(BuildContext context){
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title:Text('Mask App'),),
      body: Align(child: Column(children: [
        Text(""),
        FlatButton(
          onPressed: (){
              _getCurrentLocation();
          },
          color: Colors.green,
          child: Text("Find Location")
        )
      ])
      ),
    ),
    );
}
}
