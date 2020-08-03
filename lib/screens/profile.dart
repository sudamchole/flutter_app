import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 5.0,
        iconTheme: new IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue[600],
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child:Container(
          child: Text("Profile"),
        ),
      ));

  }
}
