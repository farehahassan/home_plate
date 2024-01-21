// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_plate/constants/color.dart';

class NotificationCard extends StatefulWidget {
  final String description;
  final String avatar;
  final String day;
  final String time;
  final String foodImage;

  const NotificationCard(
      {super.key,
      required this.description,
      required this.avatar,
      required this.day,
      required this.time,
      required this.foodImage});

  @override
  State<NotificationCard> createState() => _NotificationCardState();
}

class _NotificationCardState extends State<NotificationCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 30.sp),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(
              widget.avatar,
            ),
            maxRadius: 30.r,
          ),
          SizedBox(
            width: 15.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Wrap(
                direction: Axis.vertical,
                children: [
                  SizedBox(
                    width: 182.w,
                    child: Text(
                      widget.description,
                      softWrap: true,
                      style: GoogleFonts.poppins(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: black,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    widget.day,
                    style: GoogleFonts.poppins(
                      color: lightblackColor,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "  |  ",
                    style: GoogleFonts.poppins(
                      color: lightblackColor,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    widget.time,
                    style: GoogleFonts.poppins(
                      color: lightblackColor,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          Container(
            width: 55.w,
            height: 48.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.foodImage),
              ),
              borderRadius: BorderRadius.circular(10.r),
            ),
          )
        ],
      ),
    );
  }
}
