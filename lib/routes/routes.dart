import 'package:flutter/material.dart';
import 'package:home_plate/views/auth/login_page.dart';
import 'package:home_plate/routes/routes_name.dart';

class CustomRouter {
  static Route<dynamic> allRoutes(RouteSettings settings) {
    switch (settings.name) {
      case login_screen_route:
        return MaterialPageRoute(builder: (_) => LoginPage());

      default:
        return MaterialPageRoute(builder: (_) => Text("Page Not Found"));
    }
  }
}
