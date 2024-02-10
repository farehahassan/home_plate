import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_plate/constants/color.dart';

class CallCards extends StatefulWidget {
  const CallCards({super.key});

  @override
  State<CallCards> createState() => _CallCardsState();
}

class _CallCardsState extends State<CallCards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: 1, color: greyColor)),
      ),

      margin: EdgeInsets.only(bottom: 20.sp),
      width: double.infinity.w,
      // height: ,
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(
              "assets/images/home/person2.png",
            ),
            radius: 25.r,
          ),
          SizedBox(
            width: 10.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Ronald Richards",
                style: GoogleFonts.poppins(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: black,
                ),
              ),
              Text(
                "Missed Call",
                style: GoogleFonts.poppins(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w500,
                  color: cancleColor,
                ),
              ),
            ],
          ),
          Spacer(),
          Column(
            children: [
              Container(
                width: 15.w,
                height: 15.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: cancleColor,
                ),
                child: Center(
                  child: Text(
                    "3",
                    style: GoogleFonts.poppins(
                      fontSize: 8.sp,
                      fontWeight: FontWeight.w500,
                      color: white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "Now",
                style: GoogleFonts.poppins(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w500,
                  color: lightGreyColor,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
