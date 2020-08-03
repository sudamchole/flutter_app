import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 5.0,
        iconTheme: new IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue[600],
        title: Text(
          'Dashboard',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child:Container(
          child: Text("Dashboards"),
        ),
      ));

  }
}
