// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_plate/views/base/components/heading.dart';
// import 'package:home_plate/views/base/components/login_components.dart';
import 'package:home_plate/views/base/components/logo_text.dart';
// import 'package:home_plate/views/base/components/orange_button.dart';
import 'package:home_plate/constants/color.dart';
// import 'package:home_plate/routes/routes_name.dart';
// import 'package:home_plate/views/base/onboarding/onboardlist.dart';
// import 'package:home_plate/views/user/auth/components/dont_have_account.dart';
import 'package:home_plate/views/user/auth/components/user_login.dart';
import 'package:home_plate/views/vender/auth/components/vender_login.dart';
// import 'package:home_plate/views/user/auth/components/social_card.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // final pageController = PageController();
  // int currentIndex = 0;
  // void onChanged(int index) {
  //   setState(() {
  //     currentIndex = index;
  //   });
  // }
  bool isUserScelected = true;

  // final List<String> _sidetext = ["User side", "Vendor side"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text(""),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 17.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //logo home plate
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LogoText(),
              ],
            ),
            SizedBox(
              height: 48.h,
            ),
            //heading
            Heading(
              text: "Let's you in",
              fontsize: 30.sp,
              color: Colors.black,
            ),
            SizedBox(
              height: 24.h,
            ),
            //user and vendor text
            Row(
              children: [],
            ),

            //slider
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                        onPressed: () {
                          setState(() {
                            isUserScelected = true;
                          });
                        },
                        child: Text(
                          "User side",
                          style: GoogleFonts.poppins(
                            fontSize: 18.sp,
                            fontWeight: isUserScelected
                                ? FontWeight.w600
                                : FontWeight.w400,
                            color: isUserScelected ? primarycolor : greyColor,
                          ),
                        )),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            isUserScelected = false;
                          });
                        },
                        child: Text(
                          "Vendor side",
                          style: GoogleFonts.poppins(
                            fontSize: 18.sp,
                            fontWeight: isUserScelected
                                ? FontWeight.w400
                                : FontWeight.w600,
                            color: isUserScelected ? greyColor : primarycolor,
                          ),
                        )),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 170.w,
                      height: isUserScelected ? 5.h : 3.h,
                      color: isUserScelected ? primarycolor : greyColor,
                    ),
                    Container(
                      width: 170.w,
                      height: isUserScelected ? 3.h : 5.h,
                      color: isUserScelected ? greyColor : primarycolor,
                    ),
                  ],
                )
              ],
            ),
            // _buildDotIndicator(),
            SizedBox(
              height: 32.h,
            ),
            SizedBox(
              child: isUserScelected ? UserLogin() : VendorLogin(),
            )
          ],
        ),
      ),
    );
  }
}