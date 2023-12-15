// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_plate/constants/color.dart';
import 'package:home_plate/routes/routes_name.dart';
import 'package:home_plate/views/base/components/heading.dart';
import 'package:home_plate/views/base/components/logo_text.dart';
import 'package:home_plate/views/base/components/orange_button.dart';
import 'package:home_plate/views/user/auth/Forgot/components/enter_code_text_field.dart';

class EnterCodeScreen extends StatefulWidget {
  const EnterCodeScreen({super.key});

  @override
  State<EnterCodeScreen> createState() => _EnterCodeScreenState();
}

class _EnterCodeScreenState extends State<EnterCodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.sp,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LogoText(),
              ],
            ),
            SizedBox(
              height: 75.h,
            ),
            Heading(
              text: "Enter Code",
              fontsize: 30.sp,
              color: black,
            ),
            SizedBox(
              height: 26.h,
            ),
            EnterCodeTextField(),
            SizedBox(
              height: 30.h,
            ),
            OrangeButton(
              text: "Next",
              ontap: () {
                Navigator.pushNamed(context, change_password_screen_route);
              },
            )
          ],
        ),
      ),
    );
  }
}
