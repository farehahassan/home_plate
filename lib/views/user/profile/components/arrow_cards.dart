// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_plate/constants/color.dart';

// import 'package:infoodmacion/constants/colors.dart';
class ArrowCards extends StatelessWidget {
  VoidCallback ontap;
  final String settingname;
  final String svg;
  final Color color;
  // ignore: non_constant_identifier_names
  ArrowCards({
    Key? key,
    required this.ontap,
    required this.settingname,
    required this.svg,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        margin: EdgeInsets.only(
          bottom: 20.sp,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(
                  // bottom: 20.sp,
                  ),
              width: 45.w,
              height: 45.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color,
                // color: black,
              ),
              child: Padding(
                padding: EdgeInsets.all(12.0.sp),
                child: SvgPicture.asset(
                  svg,
                  width: 21.w,
                  height: 21.h,
                ),
              ),
            ),
            SizedBox(
              width: 20.w,
            ),
            Text(
              settingname,
              style: GoogleFonts.poppins(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: black,
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios_rounded,
              color: lightGreyColor,
              size: 16.sp,
            ),
          ],
        ),
      ),
    );
  }
}
