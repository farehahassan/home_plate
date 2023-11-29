import 'package:flutter/material.dart';
import 'package:home_plate/views/auth/login_screen.dart';
import 'package:home_plate/routes/routes_name.dart';
import 'package:home_plate/views/auth/signup_screen.dart';
import 'package:home_plate/views/home/home_screen.dart';
import 'package:home_plate/views/onboarding/onboard.dart';

class CustomRouter {
  static Route<dynamic> allRoutes(RouteSettings settings) {
    switch (settings.name) {
      case onboarding_screen_route:
        return MaterialPageRoute(builder: (_) => const Onboard());
      case login_screen_route:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case signup_screen_route:
        return MaterialPageRoute(builder: (_) => const SignupScreen());
      case home_screen_route:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      default:
        return MaterialPageRoute(builder: (_) => const Text("Page Not Found"));
    }
  }
}
