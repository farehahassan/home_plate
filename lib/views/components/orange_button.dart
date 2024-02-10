// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:home_plate/constants/color.dart';

// ignore: must_be_immutable
class OrangeButton extends StatelessWidget {
  String text;
  VoidCallback ontap;
  Border? border;
  OrangeButton({
    Key? key,
    required this.text,
    required this.ontap,
    this.border,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: 353.w,
        height: 60.h,
        decoration: BoxDecoration(
          border: border,
          color: primarycolor,
          borderRadius: BorderRadius.circular(
            20.sp,
          ),
        ),
        child: Center(
          //  Padding(
          //   padding: EdgeInsets.symmetric(horizontal: 120.sp, vertical: 16.sp),
          child: Text(
            text,
            style: GoogleFonts.roboto(
                fontSize: 20.sp, fontWeight: FontWeight.w400, color: white),
          ),
        ),
      ),
    );
  }
}
