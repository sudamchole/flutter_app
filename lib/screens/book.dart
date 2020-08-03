import 'package:flutter/material.dart';

class Book extends StatefulWidget {
  @override
  _BookState createState() => _BookState();
}

class _BookState extends State<Book> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 5.0,
        iconTheme: new IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue[600],
        title: Text(
          'Book',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child:Container(
          child: Text("Books"),
        ),
      ));

  }
}
