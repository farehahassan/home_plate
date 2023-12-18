// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:home_plate/constants/color.dart';

class SubHeading extends StatelessWidget {
  final String subHeading;
  VoidCallback? ontap;
  IconData? icon;
  SubHeading({
    Key? key,
    required this.subHeading,
    this.ontap,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity.w,
      child: Row(
        children: [
          Text(
            subHeading,
            style: GoogleFonts.poppins(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: black,
            ),
          ),
          Spacer(),
          InkWell(
            onTap: ontap,
            child: Icon(
              icon,
              color: primarycolor,
              size: 20.sp,
            ),
          )
        ],
      ),
    );
  }
}
