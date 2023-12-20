import 'dart:async';

import 'package:animate_do/animate_do.dart';
// import 'package:find_driver/utils/colors.dart';
// import 'package:find_driver/views/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_plate/constants/color.dart';
import 'package:home_plate/views/base/onboarding/onboard.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Onboard()));
    });
    Timer(Duration(seconds: 2), () {
      setState(() {
        textVisble = true;
      });
    });
    Timer(Duration(seconds: 3), () {
      setState(() {
        isBlack = true;
      });
    });
  }

  bool textVisble = false;
  bool isBlack = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      body: Container(
        height: double.infinity.h,
        width: double.infinity.w,
        // color: primaryColor,
        child: Stack(
          children: [
            isBlack
                ? Positioned(
                    right: -600,
                    top: -100,
                    // bottom: 1,
                    left: -600,
                    child: ZoomIn(
                      child: Container(
                        height: 1000,
                        width: 1000,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: scaffoldColor,
                        ),
                      ),
                    ),
                  )
                : Container(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ZoomIn(
                    delay: Duration(seconds: 0),
                    child: SvgPicture.asset(
                      "assets/svgs/auth/logo.svg",
                      width: 160.w,
                      height: 160.h,
                    )),
                SizedBox(
                  height: 29.h,
                ),
                textVisble
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SlideInLeft(
                            child: Text(
                              'Home',
                              style: TextStyle(
                                color: homecolor,
                                fontWeight: FontWeight.w700,
                                fontSize: 41.413.sp,
                              ),
                            ),
                          ),
                          SlideInRight(
                            child: Text(
                              'Plate',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 41.413.sp,
                                color: primarycolor,
                              ),
                            ),
                          )
                        ],
                      )
                    : Container(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
