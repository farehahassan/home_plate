import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:givestarreviews/givestarreviews.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_plate/constants/color.dart';
import 'package:home_plate/views/components/custom_appbar.dart';
import 'package:home_plate/views/components/heading.dart';
import 'package:home_plate/views/components/orange_button.dart';
import 'package:simple_animation_progress_bar/simple_animation_progress_bar.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({super.key});

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: ""),
      backgroundColor: scaffoldColor,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.sp,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Heading(
                  text: "Mixed Fried Chicken",
                  fontsize: 22.sp,
                  color: black,
                ),
                SizedBox(
                  height: 8.h,
                ),
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
                  height: 10.h,
                ),
                Heading(
                  text: "Overview",
                  fontsize: 18.sp,
                  color: black,
                ),
                SizedBox(
                  height: 3.h,
                ),
                Text(
                  "So yes, the alcohol (ethanol) in hand sanitizers can be absorbed through the skin, but no, it would The study was repeated with three brands of hand sanitizers containing 55%, 85%, and 95% ethanol. Th",
                  style: GoogleFonts.poppins(
                      fontSize: 12.sp,
                      color: black,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 13.h,
                ),
                Heading(
                  text: "Address",
                  fontsize: 18.sp,
                  color: black,
                ),
                SizedBox(
                  height: 7.h,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: dollarColor,
                      size: 18.sp,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      "1901 Thornridge Cir. Shiloh, Hawaii 81063",
                      style: GoogleFonts.poppins(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: lightGreyColor,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Image.asset(
            "assets/images/home/mapp.png",
            fit: BoxFit.contain,
            width: double.infinity.w,
            // height: double.infinity.w,
          ),
        ],
      ),
    );
  }
}
