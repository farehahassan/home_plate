import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_plate/constants/color.dart';
import 'package:home_plate/views/base/components/heading.dart';
import 'package:home_plate/views/base/components/logo_text.dart';
import 'package:home_plate/views/base/components/orange_button.dart';
import 'package:home_plate/views/user/auth/components/custom_text_field.dart';

class ChangePassScreen extends StatefulWidget {
  const ChangePassScreen({super.key});

  @override
  State<ChangePassScreen> createState() => _ChangePassScreenState();
}

class _ChangePassScreenState extends State<ChangePassScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 19.sp,
        ),
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
              height: 69.h,
            ),
            Heading(
              text: "Change password",
              fontsize: 30.sp,
              color: black,
            ),
            SizedBox(
              height: 26.h,
            ),
            CustomTextField(
              hinttext: "New password",
            ),
            SizedBox(
              height: 16.h,
            ),
            CustomTextField(
              hinttext: "Confirm password",
            ),
            SizedBox(
              height: 30.h,
            ),
            OrangeButton(
              text: "Next",
              ontap: () {},
            )
          ],
        ),
      ),
    );
  }
}
