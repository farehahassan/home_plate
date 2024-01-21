import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SeeAllText extends StatelessWidget {
  final String text;
  VoidCallback? ontap;
  SeeAllText({super.key, required this.text, this.ontap});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: GoogleFonts.aoboshiOne(
              fontSize: 18.sp, fontWeight: FontWeight.w400),
        ),
        const Spacer(),
        InkWell(
          onTap: ontap,
          child: Text(
            "See all",
            style: GoogleFonts.roboto(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.orange),
          ),
        )
      ],
    );
  }
}
