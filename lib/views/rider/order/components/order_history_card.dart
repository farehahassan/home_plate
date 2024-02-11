import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_plate/constants/color.dart';
import 'package:home_plate/views/components/orange_button.dart';

class OrderHistoryCards extends StatelessWidget {
  const OrderHistoryCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(
          15.r,
        ),
      ),
      margin: EdgeInsets.only(
        bottom: 10.sp,
      ),
      height: 140.h,
      width: double.infinity.w,
      child: Padding(
        padding: EdgeInsets.all(10.0.sp),
        child: Row(
          children: [
            Container(
              width: 100.w,
              height: 125.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  10.r,
                ),
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/home/food1.png",
                  ),
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
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Mixed Fried Meat",
                      style: GoogleFonts.aoboshiOne(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: black,
                      ),
                    ),
                    SizedBox(
                      width: 30.w,
                    ),
                    RichText(
                      text: TextSpan(
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
                            text: '18.00',
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
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        // text: 'Home ',
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Location: ',
                            style: GoogleFonts.poppins(
                              fontSize: 12.sp,
                              color: greyColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: 'New Jersy...',
                            style: GoogleFonts.poppins(
                              fontSize: 12.sp,
                              color: black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 70.sp,
                    ),
                    Icon(
                      Icons.location_on,
                      size: 16.sp,
                      color: lightblackColor,
                    )
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        // text: 'Home ',
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Phone Number: ',
                            style: GoogleFonts.poppins(
                              fontSize: 12.sp,
                              color: greyColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: '+1234567',
                            style: GoogleFonts.poppins(
                              fontSize: 12.sp,
                              color: black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(
                            // text: 'Home ',
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Items: ',
                                style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  color: greyColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              TextSpan(
                                text: '2',
                                style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  color: black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 90.w,
                        ),
                        // InkWell(
                        //   onTap: () {},
                        //   child: Container(
                        //     decoration: BoxDecoration(
                        //         borderRadius: BorderRadius.circular(
                        //           10.r,
                        //         ),
                        //         border: Border.all(
                        //           color: greyColor,
                        //         )),
                        //     child: Padding(
                        //       padding: EdgeInsets.symmetric(
                        //           horizontal: 15.sp, vertical: 5.sp),
                        //       child: Text(
                        //         "Reject",
                        //         style: GoogleFonts.poppins(
                        //           fontSize: 10.sp,
                        //           color: greyColor,
                        //         ),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        // SizedBox(
                        //   width: 10.w,
                        // ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: primarycolor,
                              borderRadius: BorderRadius.circular(
                                10.r,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15.sp, vertical: 5.sp),
                              child: Text(
                                "Delivered",
                                style: GoogleFonts.poppins(
                                  fontSize: 10.sp,
                                  color: white,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
