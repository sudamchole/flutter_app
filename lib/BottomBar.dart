
import 'package:flutter/material.dart';
import 'package:flutterapp/screens/book.dart';
import 'package:flutterapp/screens/dashboard.dart';
import 'package:flutterapp/screens/home.dart';
import 'package:flutterapp/screens/notification.dart';
import 'package:flutterapp/screens/profile.dart';
class BottomBar extends StatefulWidget {
  final int selectedIndex;
  BottomBar({@required this.selectedIndex});
  @override State<StatefulWidget> createState() => new _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentIndex;

  final List<Widget> viewContainer = [
    Dashboard(),
    Book(),
    Home(),
    Notifications(),
    Profile()
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
          backgroundColor: Colors.blue[600],
          body: viewContainer[currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            elevation: 30,
            backgroundColor: Colors.white,
            onTap: onTabTapped, // new
            currentIndex: currentIndex,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: true,
            showUnselectedLabels: true,

            unselectedIconTheme: IconThemeData(
                color: Colors.grey,
                size: 30
            ),
            selectedIconTheme: IconThemeData(
                color: Colors.blue[600],
                size: 30,
            ),

            selectedItemColor: Colors.blue[600],
            unselectedItemColor: Colors.grey,

            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.dashboard),
                  title: Text(''),
                  //activeIcon: ImageIcon(AssetImage("assets/tab_home.png"))
                  ),
              BottomNavigationBarItem(
                icon: Icon(Icons.book),
                title: Text(''),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text(''),
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
