import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_plate/constants/color.dart';
import 'package:home_plate/views/base/onboarding/onboarding.dart';
import 'package:home_plate/views/user/chat/chat_screen.dart';
import 'package:home_plate/views/user/order/order_screen.dart';
import 'package:home_plate/views/user/profile/profile_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    final screens = [
      HomePage(),
      OrderScreen(),
      ChatScreen(),
      ProfileScreen(),
    ];
    return Scaffold(
        bottomNavigationBar: NavigationBar(
      height: 80.h,
      elevation: 0,
      selectedIndex: 0,
      onDestinationSelected: (index) {
        setState(() {
          final selectedIndex = 0;
        });
      },
      destinations: [
        NavigationDestination(icon: Icon(Icons.home), label: "Home"),
        NavigationDestination(icon: Icon(Icons.receipt_sharp), label: "Order"),
        NavigationDestination(icon: Icon(Icons.chat_rounded), label: "Chat"),
        NavigationDestination(icon: Icon(Icons.person), label: "Profile")
      ],
    ));
  }
}
