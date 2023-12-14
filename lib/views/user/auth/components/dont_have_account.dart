import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_plate/constants/color.dart';
import 'package:home_plate/routes/routes_name.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, signup_screen_route);
      },
      child: RichText(
        text: TextSpan(
          // text: 'Home ',
          style: DefaultTextStyle.of(context).style,
          children: <TextSpan>[
            TextSpan(
              text: "Don't have an account? ",
              style: GoogleFonts.poppins(
                fontSize: 12.sp,
                color: black,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextSpan(
              text: 'Create one',
              style: GoogleFonts.poppins(
                fontSize: 12.sp,
                color: black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
