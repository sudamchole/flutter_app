import 'package:flutter/material.dart';
import 'package:flutterapp/screens/book.dart';
import 'package:flutterapp/screens/dashboard.dart';
import 'package:flutterapp/screens/home.dart';
import 'package:flutterapp/widget/home_details.dart';

class DetailScreen extends StatefulWidget {
  final int selectedIndex;
  DetailScreen({@required this.selectedIndex});
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int currentIndex;

  final List<Widget> viewContainer = [
    HomeDetails(),
    Center(
      child: Text("Notification"),
    ),
    Center(
      child: Text("Profile"),
    ),
  ];

  @override
  void initState() {
    super.initState();
    currentIndex = widget.selectedIndex;
  }

  @override
  Widget build(BuildContext context) {
    void onTabTapped(int index) {
      setState(() {
        currentIndex = index;
      });
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.grey),
        title:Container(
          child: Column(
          children: <Widget>[
            Text("Class First - Section A",style: TextStyle(color: Colors.blueAccent),),
            Text("Chapter 1st - Addition",style: TextStyle(color: Colors.grey,fontSize: 13),)
          ],

          ),
        ),
        actions: <Widget>[
          Container(margin:EdgeInsets.only(right: 15),child: Icon(Icons.navigate_next,size: 45,))
        ],
      ),
      body: viewContainer[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 30,
        backgroundColor: Colors.blueAccent,
        onTap: onTabTapped, // new
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,

        unselectedIconTheme: IconThemeData(
          color: Colors.white70,
          size: 30
        ),
        selectedIconTheme: IconThemeData(
          color: Colors.white,
          size: 30,
        ),

        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[100],

        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(''),
            //activeIcon: ImageIcon(AssetImage("assets/tab_home.png"))
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            title: Text(''),
          ),

        ],
      ),
      );
  }
}
