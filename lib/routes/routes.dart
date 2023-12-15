import 'package:flutter/material.dart';
import 'package:home_plate/views/user/auth/Forgot/change_pass_screen.dart';
import 'package:home_plate/views/user/auth/Forgot/enter_code_screen.dart';
import 'package:home_plate/views/user/auth/Forgot/forgot_screen.dart';
import 'package:home_plate/views/user/auth/Login/login_page.dart';
import 'package:home_plate/views/user/auth/loginWithSocialApp/login_screen.dart';
import 'package:home_plate/routes/routes_name.dart';
import 'package:home_plate/views/user/auth/Signup/signup_screen.dart';
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
      case login_page_route:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case signup_screen_route:
        return MaterialPageRoute(builder: (_) => const SignupScreen());
      case home_screen_route:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case forgot_screen_route:
        return MaterialPageRoute(builder: (_) => const ForgotScreen());
      case enter_code_screen_route:
        return MaterialPageRoute(builder: (_) => const EnterCodeScreen());
      case change_password_screen_route:
        return MaterialPageRoute(builder: (_) => const ChangePassScreen());

      default:
        return MaterialPageRoute(builder: (_) => const Text("Page Not Found"));
    }
  }
}
