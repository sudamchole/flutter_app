import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 5.0,
        iconTheme: new IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue[600],
        title: Text(
          'Notitifaction',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child:Container(
          child: Text("Notifications"),
        ),
      ));

  }
}
