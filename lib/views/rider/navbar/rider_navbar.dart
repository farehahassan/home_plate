import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_plate/constants/color.dart';
import 'package:home_plate/views/rider/chat/rider_chat_screen.dart';
import 'package:home_plate/views/rider/order/rider_order_screen.dart';
import 'package:home_plate/views/rider/profile/rider_profile_screen.dart';
import 'package:home_plate/views/user/chat/chat_screen.dart';
import 'package:home_plate/views/user/home/home_screen.dart';
import 'package:home_plate/views/user/order/order_screen.dart';
import 'package:home_plate/views/user/profile/profile_screen.dart';

class RiderNavBar extends StatefulWidget {
  const RiderNavBar({super.key});

  @override
  State<RiderNavBar> createState() => _RiderNavBarState();
}

class _RiderNavBarState extends State<RiderNavBar> {
  int currentTab = 0;
  final List<Widget> screens = [
    // const HomeScreen(),
    const RiderOrderScreen(),
    const RiderChatScreen(),
    const RiderProfileScreen(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const RiderOrderScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      bottomNavigationBar: BottomAppBar(
        height: 82.h,
        color: white,
        child: SizedBox(
          height: 80.h,
          width: double.infinity.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // MaterialButton(
              //   minWidth: 40,
              //   onPressed: () {
              //     setState(() {
              //       currentScreen = const HomeScreen();
              //       currentTab = 0;
              //     });
              //   },
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       SizedBox(
              //         width: 19.w,
              //         height: 19.w,
              //         child: SvgPicture.asset(
              //           currentTab == 0
              //               ? "assets/svgs/social/Homefill.svg"
              //               : "assets/svgs/social/home.svg",
              //         ),
              //       ),
              //       SizedBox(
              //         height: 5.h,
              //       ),
              //       Text(
              //         "Home",
              //         style: GoogleFonts.poppins(
              //           fontSize: 8.sp,
              //           color: currentTab == 0 ? primarycolor : lightblackColor,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen = const RiderOrderScreen();
                    currentTab = 0;
                  });
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 19.w,
                      height: 19.w,
                      child: SvgPicture.asset(
                        currentTab == 0
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
                    currentScreen = const RiderChatScreen();
                    currentTab = 1;
                  });
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 19.w,
                      height: 19.w,
                      child: SvgPicture.asset(
                        currentTab == 1
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
                    currentScreen = const RiderProfileScreen();
                    currentTab = 2;
                  });
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 19.w,
                      height: 19.w,
                      child: SvgPicture.asset(
                        currentTab == 2
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
                        color: currentTab == 2 ? primarycolor : lightblackColor,
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
