// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_plate/constants/color.dart';
// import 'package:testone/test/constants/color.dart';

class TransactionHistoryCard extends StatefulWidget {
  final String foodName;
  final String price;
  final String image;
  const TransactionHistoryCard(
      {super.key,
      required this.foodName,
      required this.price,
      required this.image});
  @override
  State<TransactionHistoryCard> createState() => _TransactionHistoryCardState();
}

class _TransactionHistoryCardState extends State<TransactionHistoryCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 8.sp,
      ),
      height: 75.h,
      width: 357.w,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Padding(
        padding: EdgeInsets.only(right: 12.sp),
        child: Row(
          children: [
            SizedBox(
              width: 9.w,
            ),
            Container(
              width: 60.w,
              height: 60.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.r),
                image: DecorationImage(
                  image: AssetImage(widget.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 14.w,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.foodName,
                  style: GoogleFonts.poppins(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: black,
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "Dec 30, 2019 07:52",
                  style: GoogleFonts.poppins(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(0, 0, 0, 0.40),
                  ),
                ),
              ],
            ),
            Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(
                  Icons.close_rounded,
                  color: cancleColor,
                  size: 18.sp,
                ),
                SizedBox(
                  height: 6.h,
                ),
                Row(
                  children: [
                    Text(
                      "\$",
                      style: GoogleFonts.aoboshiOne(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: primarycolor,
                      ),
                    ),
                    Text(
                      widget.price,
                      style: GoogleFonts.aoboshiOne(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: black,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
