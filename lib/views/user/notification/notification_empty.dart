import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_plate/constants/color.dart';
import 'package:home_plate/views/components/custom_appbar.dart';

class NotificationEmpty extends StatelessWidget {
  const NotificationEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Notification",
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 19.sp),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 120.h,
            ),
            Image.asset(
              "assets/images/home/emptynotification.png",
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "You don't have any notification at this time",
              style: GoogleFonts.poppins(
                  fontSize: 14.sp,
                  color: lightblackColor,
                  fontWeight: FontWeight.w400),
            ),
            Spacer(),
            // SizedBox(height: 30.h,),
          ],
        ),
      ),
    );
  }
}
