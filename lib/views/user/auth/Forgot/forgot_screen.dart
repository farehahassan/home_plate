// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_plate/constants/color.dart';
import 'package:home_plate/routes/routes_name.dart';
import 'package:home_plate/views/components/heading.dart';
import 'package:home_plate/views/components/logo_text.dart';
import 'package:home_plate/views/components/orange_button.dart';
import 'package:home_plate/views/user/auth/components/custom_text_field.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({super.key});

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LogoText(),
              ],
            ),
            SizedBox(
              height: 54.h,
            ),
            Heading(
              text: "Forgot Password",
              fontsize: 30.sp,
              color: black,
            ),
            SizedBox(
              height: 26.h,
            ),
            CustomTextField(hinttext: "Email Address,"),
            SizedBox(
              height: 30.h,
            ),
            OrangeButton(
              text: "Next",
              ontap: () {
                Navigator.pushNamed(context, enter_code_screen_route);
              },
            )
          ],
        ),
      ),
    );
  }
}
