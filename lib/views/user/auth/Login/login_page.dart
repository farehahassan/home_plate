// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_plate/constants/color.dart';
import 'package:home_plate/routes/routes_name.dart';
import 'package:home_plate/views/components/heading.dart';
import 'package:home_plate/views/components/logo_text.dart';
import 'package:home_plate/views/components/orange_button.dart';
import 'package:home_plate/views/user/auth/components/custom_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.sp),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LogoText(),
              ],
            ),
            SizedBox(
              height: 58.h,
            ),
            Heading(
              text: "Log in",
              fontsize: 30.sp,
              color: black,
            ),
            SizedBox(
              height: 26.h,
            ),
            CustomTextField(
              hinttext: "Email Address",
            ),
            SizedBox(
              height: 12.h,
            ),
            CustomTextField(
              hinttext: "Password Address",
            ),
            SizedBox(
              height: 30.h,
            ),
            OrangeButton(
              text: "Log in",
              ontap: () {
                // Navigator.pushNamed(context, forgot_screen_route);
              },
            ),
            SizedBox(
              height: 6.h,
            ),
            Row(
              children: [
                Text(
                  "Forgot Password ?",
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: lightGreyColor,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, forgot_screen_route);
                  },
                  child: Text(
                    "Reset",
                    style: GoogleFonts.poppins(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: black,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
