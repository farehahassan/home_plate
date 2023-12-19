import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_plate/constants/color.dart';

class InfoCardText extends StatelessWidget {
  final String text;
  const InfoCardText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: GoogleFonts.poppins(
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            color: lightGreyColor,
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        Container(
          width: double.infinity.w,
          height: 55.h,
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: TextFormField(
            style: GoogleFonts.poppins(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: black,
            ),
            decoration: InputDecoration(

                // contentPadding: EdgeInsetsDirectional.symmetric(
                //   vertical: 5.sp,
                //   horizontal: 10.sp,
                // ),
                fillColor: white,
                filled: true,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide: BorderSide.none,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                )),
          ),
        ),
        SizedBox(
          height: 7.h,
        )
      ],
    );
  }
}
