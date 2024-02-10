import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_plate/constants/color.dart';
import 'package:home_plate/routes/routes_name.dart';
import 'package:home_plate/views/vender/chat/vender_chat_screen.dart';
import 'package:home_plate/views/vender/home/vender_home_screen.dart';
import 'package:home_plate/views/vender/orders/vender_order_screen.dart';
import 'package:home_plate/views/vender/profile/vender_profile_screen.dart';
import 'package:home_plate/views/vender/uploadfood/uploadfood_screen.dart';

class VenderNavbar extends StatefulWidget {
  const VenderNavbar({super.key});

  @override
  State<VenderNavbar> createState() => _VenderNavbarState();
}

class _VenderNavbarState extends State<VenderNavbar> {
  List<Widget> _screens = [
    VenderHomeScreen(),
    VenderOrderScreen(),
    VenderChatScreen(),
    VenderProfileScreen(),
    // UploadFoodScreen(),
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      // appBar: AppBar(
      //   title: Text('Your App'),
      // ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomAppBar(
        color: white,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home,
                size: 25.sp,
              ),
              onPressed: () => _onNavItemTapped(0),
              color: _currentIndex == 0 ? primarycolor : lightblackColor,
            ),
            IconButton(
              icon: Icon(Icons.file_copy),
              onPressed: () => _onNavItemTapped(1),
              color: _currentIndex == 1 ? primarycolor : lightblackColor,
            ),
            SizedBox(), // This is the center notch button
            IconButton(
              icon: Icon(Icons.people_alt),
              onPressed: () => _onNavItemTapped(2),
              color: _currentIndex == 2 ? primarycolor : lightblackColor,
            ),
            IconButton(
              icon: Icon(
                Icons.person,
                size: 25.sp,
              ),
              onPressed: () => _onNavItemTapped(3),
              color: _currentIndex == 3 ? primarycolor : lightblackColor,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, uploadfood_screen_route),
        shape: CircleBorder(),
        backgroundColor: primarycolor,
        child: Icon(Icons.travel_explore_outlined, color: white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  void _onNavItemTapped(int index) {
    setState(() {
      _currentIndex = index;
      // Implement navigation logic here based on the selected index
    });
  }
}
