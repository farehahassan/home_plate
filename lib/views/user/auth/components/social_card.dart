// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:home_plate/constants/color.dart';
import 'package:home_plate/views/user/auth/components/gt_walsheim_font.dart';

class SocialCard extends StatelessWidget {
  String text;
  String svg;
  SocialCard({
    Key? key,
    required this.text,
    required this.svg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 353.w,
      // height: 49.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: Colors.white,
        border: Border.all(
          color: borderOutlineColor,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 11.sp),
        child: Row(
          children: [
            SvgPicture.asset(
              svg,
              width: 24.w,
              height: 24.h,
            ),
            SizedBox(
              width: 50.w,
            ),
            GtFont(
              text: text,
              fontsize: 16.sp,
              color: black,
              fontWeight: FontWeight.w500,
            )
          ],
        ),
      ),
    );
  }
}
