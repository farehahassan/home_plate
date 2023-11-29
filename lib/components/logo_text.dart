import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_plate/constants/color.dart';

class LogoText extends StatelessWidget {
  const LogoText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
            // text: 'Home ',
            style: DefaultTextStyle.of(context).style,
            children: <TextSpan>[
              TextSpan(
                text: 'Home',
                style: GoogleFonts.aoboshiOne(
                  fontSize: 25.sp,
                  color: homecolor,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: 'Plate',
                style: GoogleFonts.aoboshiOne(
                  fontSize: 25.sp,
                  color: primarycolor,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        SvgPicture.asset(
          "assets/svgs/auth/logo.svg",
          width: 54.w,
          height: 54.h,
        )
      ],
    );
  }
}
