import 'package:flutter/material.dart';
import 'package:home_plate/views/user/auth/login_screen.dart';
import 'package:home_plate/routes/routes_name.dart';
import 'package:home_plate/views/user/auth/signup_screen.dart';
import 'package:home_plate/views/user/home/home_screen.dart';
import 'package:home_plate/views/base/onboarding/onboard.dart';
import 'package:home_plate/views/base/splash%20screen/splash_screen.dart';

class CustomRouter {
  static Route<dynamic> allRoutes(RouteSettings settings) {
    switch (settings.name) {
      case splash_screen_route:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
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
