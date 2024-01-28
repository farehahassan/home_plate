import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:givestarreviews/givestarreviews.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_plate/constants/color.dart';
import 'package:home_plate/views/components/custom_appbar.dart';
import 'package:home_plate/views/components/heading.dart';
import 'package:home_plate/views/user/rating/components/rating_cards.dart';
import 'package:simple_animation_progress_bar/simple_animation_progress_bar.dart';

class RatingScreen extends StatefulWidget {
  const RatingScreen({super.key});

  @override
  State<RatingScreen> createState() => _RatingScreenState();
}

class _RatingScreenState extends State<RatingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Ratings & Reviews"),
      backgroundColor: scaffoldColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.sp,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Heading(
                  //   text: "Mixed Fried Chicken",
                  //   fontsize: 22.sp,
                  //   color: black,
                  // ),
                  // SizedBox(
                  //   height: 8.h,
                  // ),
                  Container(
                    width: double.infinity.w,
                    height: 1.h,
                    color: greyColor,
                  ),
                  SizedBox(
                    height: 11.h,
                  ),
                  //progress area

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Heading(
                            text: "5.9",
                            fontsize: 22.sp,
                            color: black,
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          StarRating(
                            onChanged: (rate) {},
                            inactiveStarColor: Colors.amber.shade300,
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            "(2.3k reviews)",
                            style: GoogleFonts.inter(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: lightblackColor,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 137.h,
                        width: 1.w,
                        color: greyColor,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "5",
                                style: GoogleFonts.inter(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w400,
                                  color: black,
                                ),
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              SimpleAnimationProgressBar(
                                height: 6.h,
                                width: 190.w,
                                backgroundColor: greyColor,
                                foregrondColor: primarycolor,
                                ratio: 0.8.sp,
                                direction: Axis.horizontal,
                                curve: Curves.fastLinearToSlowEaseIn,
                                duration: const Duration(seconds: 3),
                                borderRadius: BorderRadius.circular(10.r),
                                // boxShadow: [
                                //   BoxShadow(
                                //     color: Colors.pink,
                                //     offset: const Offset(
                                //       5.0,
                                //       5.0,
                                //     ),
                                //     blurRadius: 10.0,
                                //     spreadRadius: 2.0,
                                //   ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            children: [
                              Text(
                                "4",
                                style: GoogleFonts.inter(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w400,
                                  color: black,
                                ),
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              SimpleAnimationProgressBar(
                                height: 6.h,
                                width: 190.w,
                                backgroundColor: greyColor,
                                foregrondColor: primarycolor,
                                ratio: 0.6.sp,
                                direction: Axis.horizontal,
                                curve: Curves.fastLinearToSlowEaseIn,
                                duration: const Duration(seconds: 3),
                                borderRadius: BorderRadius.circular(10.r),
                                // boxShadow: [
                                //   BoxShadow(
                                //     color: Colors.pink,
                                //     offset: const Offset(
                                //       5.0,
                                //       5.0,
                                //     ),
                                //     blurRadius: 10.0,
                                //     spreadRadius: 2.0,
                                //   ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            children: [
                              Text(
                                "3",
                                style: GoogleFonts.inter(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w400,
                                  color: black,
                                ),
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              SimpleAnimationProgressBar(
                                height: 6.h,
                                width: 190.w,
                                backgroundColor: greyColor,
                                foregrondColor: primarycolor,
                                ratio: 0.5.sp,
                                direction: Axis.horizontal,
                                curve: Curves.fastLinearToSlowEaseIn,
                                duration: const Duration(seconds: 3),
                                borderRadius: BorderRadius.circular(10.r),
                                // boxShadow: [
                                //   BoxShadow(
                                //     color: Colors.pink,
                                //     offset: const Offset(
                                //       5.0,
                                //       5.0,
                                //     ),
                                //     blurRadius: 10.0,
                                //     spreadRadius: 2.0,
                                //   ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            children: [
                              Text(
                                "2",
                                style: GoogleFonts.inter(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w400,
                                  color: black,
                                ),
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              SimpleAnimationProgressBar(
                                height: 6.h,
                                width: 190.w,
                                backgroundColor: greyColor,
                                foregrondColor: primarycolor,
                                ratio: 0.4.sp,
                                direction: Axis.horizontal,
                                curve: Curves.fastLinearToSlowEaseIn,
                                duration: const Duration(seconds: 3),
                                borderRadius: BorderRadius.circular(10.r),
                                // boxShadow: [
                                //   BoxShadow(
                                //     color: Colors.pink,
                                //     offset: const Offset(
                                //       5.0,
                                //       5.0,
                                //     ),
                                //     blurRadius: 10.0,
                                //     spreadRadius: 2.0,
                                //   ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            children: [
                              Text(
                                "1",
                                style: GoogleFonts.inter(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w400,
                                  color: black,
                                ),
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              SimpleAnimationProgressBar(
                                height: 6.h,
                                width: 190.w,
                                backgroundColor: greyColor,
                                foregrondColor: primarycolor,
                                ratio: 0.2.sp,
                                direction: Axis.horizontal,
                                curve: Curves.fastLinearToSlowEaseIn,
                                duration: const Duration(seconds: 3),
                                borderRadius: BorderRadius.circular(10.r),
                                // boxShadow: [
                                //   BoxShadow(
                                //     color: Colors.pink,
                                //     offset: const Offset(
                                //       5.0,
                                //       5.0,
                                //     ),
                                //     blurRadius: 10.0,
                                //     spreadRadius: 2.0,
                                //   ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  Container(
                    width: double.infinity.w,
                    height: 1.w,
                    color: greyColor,
                  ),
                  SizedBox(
                    height: 13.h,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: primarycolor,
                            ),
                            borderRadius: BorderRadius.circular(
                              25.r,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15.sp, vertical: 10.sp),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.compare_arrows_rounded,
                                  color: primarycolor,
                                  size: 15.sp,
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Text(
                                  "Sort By",
                                  style: GoogleFonts.poppins(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: primarycolor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Row(
                          children: List.generate(
                            5,
                            (index) => Container(
                              margin: EdgeInsets.only(right: 5.sp),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: primarycolor,
                                ),
                                borderRadius: BorderRadius.circular(
                                  23.r,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15.sp, vertical: 10.sp),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: primarycolor,
                                      size: 15.sp,
                                    ),
                                    Text(
                                      "5",
                                      style: GoogleFonts.poppins(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400,
                                        color: primarycolor,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  Container(
                    width: double.infinity.w,
                    height: 1.w,
                    color: greyColor,
                  ),
                  SizedBox(
                    height: 13.h,
                  ),
                  Column(
                    children: List.generate(5, (index) => RatingCard()),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
