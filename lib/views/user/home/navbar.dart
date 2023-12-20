import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_plate/constants/color.dart';
import 'package:home_plate/views/base/onboarding/onboarding.dart';
import 'package:home_plate/views/user/chat/chat_screen.dart';
import 'package:home_plate/views/user/home/home_screen.dart';
import 'package:home_plate/views/user/order/order_screen.dart';
import 'package:home_plate/views/user/profile/profile_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentTab = 0;
  final List<Widget> screens = [
    HomeScreen(),
    OrderScreen(),
    ChatScreen(),
    ProfileScreen(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomeScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      bottomNavigationBar: BottomAppBar(
        height: 82.h,
        color: white,
        child: Container(
          height: 80.h,
          width: double.infinity.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen = HomeScreen();
                    currentTab = 0;
                  });
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 19.w,
                      height: 19.w,
                      child: SvgPicture.asset(
                        currentTab == 0
                            ? "assets/svgs/social/Homefill.svg"
                            : "assets/svgs/social/home.svg",
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      "Home",
                      style: GoogleFonts.poppins(
                        fontSize: 8.sp,
                        color: currentTab == 0 ? primarycolor : lightblackColor,
                      ),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen = OrderScreen();
                    currentTab = 1;
                  });
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 19.w,
                      height: 19.w,
                      child: SvgPicture.asset(
                        currentTab == 1
                            ? "assets/svgs/social/orderfill.svg"
                            : "assets/svgs/social/order.svg",
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      "Order",
                      style: GoogleFonts.poppins(
                        fontSize: 8.sp,
                        color: currentTab == 1 ? primarycolor : lightblackColor,
                      ),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen = ChatScreen();
                    currentTab = 2;
                  });
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 19.w,
                      height: 19.w,
                      child: SvgPicture.asset(
                        currentTab == 2
                            ? "assets/svgs/social/chatfill.svg"
                            : "assets/svgs/social/chat.svg",
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      "Chat",
                      style: GoogleFonts.poppins(
                        fontSize: 8.sp,
                        color: currentTab == 2 ? primarycolor : lightblackColor,
                      ),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen = ProfileScreen();
                    currentTab = 3;
                  });
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 19.w,
                      height: 19.w,
                      child: SvgPicture.asset(
                        currentTab == 3
                            ? "assets/svgs/social/personfill.svg"
                            : "assets/svgs/social/person.svg",
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      "Profile",
                      style: GoogleFonts.poppins(
                        fontSize: 8.sp,
                        color: currentTab == 3 ? primarycolor : lightblackColor,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
