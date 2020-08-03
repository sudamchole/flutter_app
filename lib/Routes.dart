
import 'package:flutter/material.dart';
import 'package:flutterapp/BottomBar.dart';
import 'package:flutterapp/main.dart';
import 'package:flutterapp/screens/home.dart';
import 'package:flutterapp/screens/splash.dart';

/// App Routes Class -> Routing class

class AppRoutes{

  //--------------------------------------------------------------- Constants ------------------------------------------------------------------------

  static const String APP_ROUTE_BOTTOM_BAR_HOME = "/bottom_bar_home";
  static const String APP_ROUTE_BOTTOM_BAR_DASHBOARD = "/bottom_bar_dashboard";
  static const String APP_ROUTE_BOTTOM_BAR_BOOKS = "/bottom_bar_books";
  static const String APP_ROUTE_BOTTOM_BAR_NOTIFICATIONS = "/bottom_bar_notifications";
  static const String APP_ROUTE_BOTTOM_BAR_PROFILE = "/bottom_bar_profile";


  //--------------------------------------------------------------- Methods --------------------------------------------------------------------------

  /// Get Routes Method -> Route
  /// @param -> routeSettings -> RouteSettings
  /// @usage -> Returns route based on requested route settings
  ///
  Route getRoutes(RouteSettings routeSettings){

    switch(routeSettings.name){
      case APP_ROUTE_BOTTOM_BAR_HOME: {
        return MaterialPageRoute<void>(
          settings: routeSettings,
          builder: (BuildContext context) =>BottomBar(selectedIndex:2),
        );
      }
      case APP_ROUTE_BOTTOM_BAR_DASHBOARD: {
        return MaterialPageRoute<void>(
          settings: routeSettings,
          builder: (BuildContext context) =>BottomBar(selectedIndex:0),
        );
      }
      case APP_ROUTE_BOTTOM_BAR_BOOKS: {
        return MaterialPageRoute<void>(
          settings: routeSettings,
          builder: (BuildContext context) =>BottomBar(selectedIndex:1),
        );
      }
      case APP_ROUTE_BOTTOM_BAR_NOTIFICATIONS: {
        return MaterialPageRoute<void>(
          settings: routeSettings,
          builder: (BuildContext context) =>BottomBar(selectedIndex:3),
        );
      }
      case APP_ROUTE_BOTTOM_BAR_PROFILE: {
        return MaterialPageRoute<void>(
          settings: routeSettings,
          builder: (BuildContext context) =>BottomBar(selectedIndex:4),
        );
      }
      default: {
        return MaterialPageRoute<void>(
          settings: routeSettings,
          builder: (BuildContext context) => BottomBar(selectedIndex: 2),
        );
      }
    }
  }
}
