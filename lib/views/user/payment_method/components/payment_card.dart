import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_plate/constants/color.dart';

class PaymentMethodCard extends StatelessWidget {
  final String svg;
  final String name;
  final Color color;
  const PaymentMethodCard(
      {super.key, required this.svg, required this.name, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      margin: EdgeInsets.only(bottom: 11.sp),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.sp,
          vertical: 25.sp,
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              svg,
              width: 52.w,
            ),
            SizedBox(
              width: 30.w,
            ),
            Text(
              name,
              style: GoogleFonts.poppins(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
