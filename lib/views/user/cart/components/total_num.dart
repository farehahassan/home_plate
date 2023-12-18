import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_plate/constants/color.dart';

class TotalNum extends StatelessWidget {
  final String text;
  final String total;
  const TotalNum({super.key, required this.text, required this.total});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 25.sp),
      width: 320.w,
      // color: black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: GoogleFonts.poppins(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: black,
              letterSpacing: 0.17.sp,
            ),
          ),
          RichText(
            text: TextSpan(
              // text: 'Home ',
              style: DefaultTextStyle.of(context).style,
              children: <TextSpan>[
                TextSpan(
                  text: '\$',
                  style: GoogleFonts.aoboshiOne(
                    fontSize: 14.sp,
                    color: dollarColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: total,
                  style: GoogleFonts.aoboshiOne(
                    fontSize: 18.sp,
                    color: black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
