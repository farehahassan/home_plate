import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_plate/constants/color.dart';
import 'package:home_plate/views/components/heading.dart';
import 'package:home_plate/views/user/auth/components/gt_walsheim_font.dart';
import 'package:lottie/lottie.dart';

class SuccessfullyDone extends StatefulWidget {
  const SuccessfullyDone({super.key});

  @override
  State<SuccessfullyDone> createState() => _SuccessfullyDoneState();
}

class _SuccessfullyDoneState extends State<SuccessfullyDone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.asset(
              "assets/animation/orderdone.json",
              height: 300.h,
              repeat: false,
              reverse: true,
              fit: BoxFit.cover,
            ),
            Heading(
              text: "Order Successfully",
              fontsize: 28.sp,
              color: black,
            ),
            SizedBox(
              height: 5.h,
            ),
            GtFont(
              text: "Your Order has been placed Successfully",
              fontsize: 14.sp,
              color: Colors.grey.shade500,
              fontWeight: FontWeight.w400,
            ),
            SizedBox(
              height: 100.h,
            ),
          ],
        ),
      ),
    );
  }
}
