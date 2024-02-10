import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_plate/constants/color.dart';

class MyFoodCard extends StatefulWidget {
  const MyFoodCard({super.key});

  @override
  State<MyFoodCard> createState() => _MyFoodCardState();
}

class _MyFoodCardState extends State<MyFoodCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.sp),
      width: double.infinity.w,
      height: 155.h,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(
          20.r,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.sp, vertical: 10.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 150.w,
                  height: 100.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    image: DecorationImage(
                      image: AssetImage("assets/images/home/food1.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 160.w,
                      alignment: Alignment.topRight,
                      child: Text(
                        "Edit",
                        style: GoogleFonts.poppins(
                          fontSize: 10.sp,
                          color: dollarColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Text(
                      "Fried Chicken",
                      style: GoogleFonts.aoboshiOne(
                        fontSize: 16.sp,
                        color: black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    RichText(
                      text: TextSpan(
                        // text: 'Home ',
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          TextSpan(
                            text: '\$',
                            style: GoogleFonts.aoboshiOne(
                              fontSize: 10.sp,
                              color: dollarColor,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text: '15.00',
                            style: GoogleFonts.aoboshiOne(
                              fontSize: 14.sp,
                              color: primarycolor,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.remove_red_eye_outlined,
                          size: 15.sp,
                          color: lightGreyColor,
                        ),
                        Text(
                          "234",
                          style: GoogleFonts.poppins(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                            color: lightGreyColor,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.delete_outline_rounded,
                          size: 20.sp,
                          color: cancleColor,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          "Delete",
                          style: GoogleFonts.poppins(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: lightGreyColor,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Publish",
                      style: GoogleFonts.poppins(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: lightGreyColor,
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
