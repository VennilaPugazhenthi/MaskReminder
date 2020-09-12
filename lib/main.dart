import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
    @override

    Position position;

    void _getUserPosition() async  {
      // LocationPermission permission = await checkPermission();
      // LocationPermission permission = await requestPermission();

      // Position userLocation = await getCurrentPosition(desiredAccuracy: LocationAccuracy.high,timeLimit: Duration(seconds: 30), forceAndroidLocationManager: true);
      // Position userLocation = await getCurrentPosition(desiredAccuracy: LocationAccuracy.best,forceAndroidLocationManager: true);

      Position userLocation;
      // bool locationServiceEnabled= await isLocationServiceEnabled();
      // if(locationServiceEnabled){
      //  userLocation = await getCurrentPosition(forceAndroidLocationManager: true);
      // }else{
      //   userLocation = await getLastKnownPosition(forceAndroidLocationManager: true);
      // }

      userLocation = await getLastKnownPosition();
      // print(userLocation);

      setState(() {
        position = userLocation;
        // position= 433333 as Position;
      });
    }

    @override
    void initState() {
      super.initState();
      this._getUserPosition();
    }

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
                Text(
                  this.position.toString(),
                )
              ],
            ),
          ),
        ),
      );
    }
}

// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';
//
// void main() => runApp(App());
//
// class App extends StatefulWidget {
//   @override
//   _AppState createState() => _AppState();
// }
//
// class _AppState extends State<App> {
//
//   String _locationMessage = "";
//
//   void _getCurrentLocation() async {
//
//     //final position = await getCurrentPosition(desiredAccuracy: LocationAccuracy.high,forceAndroidLocationManager: true,timeLimit: Duration(minutes: 10));
//     // final position = await getLastKnownPosition(forceAndroidLocationManager: true);
//     final position = await getCurrentPosition();
//     print(position);
//
//     setState(() {
//       _locationMessage = "${position.latitude}, ${position.longitude}";
//     });
//
//   }
//
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'Flutter Demo',
//         home: Scaffold(
//             appBar: AppBar(
//                 title: Text("Location Services")
//             ),
//             body: Align(
//               child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     Text(_locationMessage),
//                     FlatButton(
//                         onPressed: () {
//                           _getCurrentLocation();
//                         },
//                         color: Colors.green,
//                         child: Text("Find Location")
//                     )
//                   ]),
//             )
//         )
//     );
//   }
// }