import 'package:auto_orientation/auto_orientation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/Routes.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override MyAppState createState() {
    return new MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight
    ]);

    AutoOrientation.portraitAutoMode();

    return MaterialApp(
      onGenerateRoute: getAppRoutes().getRoutes,
    );
  }

  AppRoutes getAppRoutes() {
    return AppRoutes();
  }
}
