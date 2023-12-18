// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_plate/constants/color.dart';
import 'package:home_plate/views/components/heading.dart';

class CartMealCard extends StatelessWidget {
  final String image;
  final String mainHeading;
  final String secondHeading;
  final String price;
  const CartMealCard(
      {super.key,
      required this.image,
      required this.mainHeading,
      required this.secondHeading,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.sp),
      height: 95.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: white,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10.sp,
          vertical: 7.sp,
        ),
        child: Row(
          children: [
            Container(
              width: 100.w,
              height: 80.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 7.h,
                ),
                Heading(
                  text: mainHeading,
                  fontsize: 16.sp,
                  color: black,
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  secondHeading,
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: lightGreyColor,
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                RichText(
                  text: TextSpan(
                    // text: 'Home ',
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(
                        text: '\$ ',
                        style: GoogleFonts.aoboshiOne(
                          fontSize: 10.sp,
                          color: dollarColor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: price,
                        style: GoogleFonts.aoboshiOne(
                          fontSize: 14.sp,
                          color: primarycolor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset(
                  "assets/images/home/cross.png",
                  width: 23.w,
                  height: 23.h,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.remove_circle_outline,
                      size: 23.sp,
                      color: primarycolor,
                    ),
                    SizedBox(
                      width: 6.w,
                    ),
                    Heading(
                      text: "1",
                      fontsize: 14.sp,
                      color: primarycolor,
                    ),
                    SizedBox(
                      width: 6.w,
                    ),
                    Icon(
                      Icons.add_circle_rounded,
                      size: 23.sp,
                      color: primarycolor,
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
