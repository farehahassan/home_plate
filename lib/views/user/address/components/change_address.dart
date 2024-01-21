// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class ChangeAddress extends StatelessWidget {
  final String main;
  final String subtext;
  VoidCallback ontap;
  final Color color;
  final Color textColor;
  final Color mainColor;
  ChangeAddress({
    super.key,
    required this.main,
    required this.subtext,
    required this.ontap,
    required this.color,
    required this.textColor,
    required this.mainColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15.sp),
      width: double.infinity.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: color,
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 5.sp, bottom: 5.sp, left: 5.sp),
        child: InkWell(
          onTap: ontap,
          child: Row(
            children: [
              Container(
                width: 100.w,
                height: 90.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/home/map.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 15.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 7.h,
                  ),
                  Text(
                    main,
                    style: GoogleFonts.poppins(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: mainColor,
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Wrap(
                    direction: Axis.vertical,
                    children: [
                      SizedBox(
                        width: 160.w,
                        child: Text(
                          subtext,
                          softWrap: true,
                          style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: textColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
