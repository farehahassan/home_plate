// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_plate/components/heading.dart';
import 'package:home_plate/components/logo_text.dart';
import 'package:home_plate/components/orange_button.dart';
import 'package:home_plate/routes/routes_name.dart';
import 'package:home_plate/views/auth/components/dont_have_account.dart';
import 'package:home_plate/views/auth/components/social_card.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final List<String> _text = [
    "Continue With Apple",
    "Continue With Google",
    "Continue With Facebook",
  ];
  final List<String> _svg = [
    "assets/svgs/social/appleBlack.svg",
    "assets/svgs/social/google.svg",
    "assets/svgs/social/facebook.svg"
  ];
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LogoText(),
              ],
            ),
            SizedBox(
              height: 62.h,
            ),
            Heading(
              text: "Let's you in",
              fontsize: 30.sp,
              color: Colors.black,
            ),
            SizedBox(
              height: 34.h,
            ),
            Column(
              children: List.generate(3, (index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 12.sp),
                  child: SocialCard(
                    text: _text[index],
                    svg: _svg[index],
                  ),
                );
              }),
            ),
            SizedBox(
              height: 33.h,
            ),
            OrangeButton(
              ontap: () {
                Navigator.pushNamed(context, home_screen_route);
              },
              text: "Log In",
            ),
            SizedBox(
              height: 13.h,
            ),
            DontHaveAccount()
          ],
        ),
      ),
    );
  }
}
