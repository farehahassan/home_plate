// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:givestarreviews/givestarreviews.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_plate/constants/color.dart';
import 'package:home_plate/routes/routes_name.dart';
import 'package:home_plate/views/components/food.dart';

class FoodDetailScreen extends StatefulWidget {
  const FoodDetailScreen({super.key});

  @override
  State<FoodDetailScreen> createState() => _FoodDetailScreenState();
}

class _FoodDetailScreenState extends State<FoodDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity.w,
              height: 358.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/home/mainfood.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 50.sp, left: 17.sp, right: 18.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: white,
                        size: 30.sp,
                      ),
                    ),
                    Icon(
                      Icons.favorite,
                      color: Color.fromRGBO(255, 0, 0, 1),
                      size: 30,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 13.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 18.sp, right: 17.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, review_screen_route);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Mixed Fried Meat",
                          style: GoogleFonts.aoboshiOne(
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w400,
                            color: black,
                          ),
                        ),
                        Icon(
                          Icons.chevron_right_rounded,
                          color: black,
                          size: 25.sp,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Container(
                    width: 360.w,
                    height: 1.h,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 0.05),
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                  ),
                  SizedBox(
                    height: 13.h,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, rating_screen_route);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.star_rounded,
                              color: primarycolor,
                              size: 25.sp,
                            ),
                            SizedBox(
                              width: 11.w,
                            ),
                            Text(
                              "5.0",
                              style: GoogleFonts.poppins(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500,
                                color: black,
                              ),
                            ),
                            SizedBox(
                              width: 6.w,
                            ),
                            Text(
                              "(",
                              style: GoogleFonts.poppins(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                                color: lightGreyColor,
                              ),
                            ),
                            Text(
                              "2.3",
                              style: GoogleFonts.poppins(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                                color: lightGreyColor,
                              ),
                            ),
                            Text(
                              "k",
                              style: GoogleFonts.poppins(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                                color: lightGreyColor,
                              ),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              "reviews",
                              style: GoogleFonts.poppins(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                                color: lightGreyColor,
                              ),
                            ),
                            Text(
                              ")",
                              style: GoogleFonts.poppins(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                                color: lightGreyColor,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.chevron_right_rounded,
                          color: black,
                          size: 25.sp,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 17.h,
                  ),
                  Container(
                    width: 360.w,
                    height: 1.h,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 0.05),
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                  ),
                  SizedBox(
                    height: 13.sp,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Icon(Icons.location_on)],
                          ),
                          SizedBox(
                            width: 14.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "2.0",
                                    style: GoogleFonts.poppins(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w500,
                                      color: black,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 4.w,
                                  ),
                                  Text(
                                    "km",
                                    style: GoogleFonts.poppins(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w500,
                                      color: black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 7.h,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Delivery Now   |",
                                    style: GoogleFonts.poppins(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400,
                                      color: lightGreyColor,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 13.w,
                                  ),
                                  Icon(
                                    Icons.bike_scooter,
                                    color: dollarColor,
                                    size: 20.sp,
                                  ),
                                  // Image.asset(
                                  //   'lib/test/assets/images/deliveryBike.png',
                                  //   width: 19.w,
                                  //   height: 18.h,
                                  //   fit: BoxFit.cover,
                                  // ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    "\$",
                                    style: GoogleFonts.poppins(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400,
                                      color: lightGreyColor,
                                    ),
                                  ),
                                  Text(
                                    "2.00",
                                    style: GoogleFonts.poppins(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400,
                                      color: lightGreyColor,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Icon(
                        Icons.chevron_right_rounded,
                        color: black,
                        size: 25.sp,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 9.h,
                  ),
                  Container(
                    width: 360.w,
                    height: 1.h,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 0.05),
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          // Image.asset(
                          //   'lib/test/assets/images/pencentage.png',
                          //   width: 22.w,
                          //   height: 22.h,
                          //   fit: BoxFit.cover,
                          // ),
                          Icon(
                            Icons.percent,
                            size: 22.sp,
                          ),
                          SizedBox(
                            width: 7.w,
                          ),
                          Text(
                            "Offers are Available",
                            style: GoogleFonts.poppins(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(0, 0, 0, 0.9),
                            ),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.chevron_right_rounded,
                        color: black,
                        size: 25.sp,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 17.h,
                  ),
                  Container(
                    width: 360.w,
                    height: 1.h,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 0.05),
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Text(
                    "Recants",
                    style: GoogleFonts.poppins(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500,
                      color: black,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 14.sp, right: 14.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Food(
                      foodName: "Fried Chicken",
                      distance: "1.4",
                      rating: "4.9",
                      ratingCount: "4.5",
                      price: "11.99",
                      deliveryFee: "1.00",
                      foodImage: "assets/images/home/pakistan.png"),
                  Food(
                      foodName: "Fried Chicken",
                      distance: "1.4",
                      rating: "4.9",
                      ratingCount: "4.5",
                      price: "11.99",
                      deliveryFee: "1.00",
                      foodImage: "assets/images/home/pakistan.png")
                ],
              ),
            )
          ],
        ),
      ),
    );
    // return Scaffold(
    //   backgroundColor: scaffoldColor,
    //   appBar: AppBar(
    //     backgroundColor: scaffoldColor,
    //     elevation: 0.sp,
    //     leading: Icon(
    //       Icons.arrow_back,
    //       color: black,
    //       size: 20.sp,
    //     ),
    //   ),
    //   body: Column(
    //     children: [
    //       Row(
    //         children: [
    //           Text(
    //             "Mixed Fried Meat",
    //             style: GoogleFonts.aoboshiOne(
    //               fontSize: 22.sp,
    //               fontWeight: FontWeight.w400,
    //               color: black,
    //             ),
    //           ),
    //         ],
    //       ),
    //       SizedBox(
    //         height: 8.h,
    //       ),
    //       Container(
    //         width: 360.w,
    //         height: 1.h,
    //         decoration: BoxDecoration(
    //           color: const Color.fromRGBO(0, 0, 0, 0.05),
    //           borderRadius: BorderRadius.circular(6.r),
    //         ),
    //       ),
    //       StarRating(
    //         size: 45.sp,
    //       ),
    //       Row(
    //         children: [
    //           Column(
    //             children: [
    //               Text(
    //                 "5.9",
    //                 style: GoogleFonts.poppins(
    //                   fontSize: 22.sp,
    //                   fontWeight: FontWeight.w500,
    //                   color: black,
    //                 ),
    //               ),
    //               //starts

    //               Row(
    //                 children: [
    //                   Text(
    //                     "(",
    //                     style: GoogleFonts.poppins(
    //                       fontSize: 16.sp,
    //                       fontWeight: FontWeight.w400,
    //                       color: lightGreyColor,
    //                     ),
    //                   ),
    //                   Text(
    //                     "2.3",
    //                     style: GoogleFonts.poppins(
    //                       fontSize: 16.sp,
    //                       fontWeight: FontWeight.w400,
    //                       color: lightGreyColor,
    //                     ),
    //                   ),
    //                   Text(
    //                     "k",
    //                     style: GoogleFonts.poppins(
    //                       fontSize: 16.sp,
    //                       fontWeight: FontWeight.w400,
    //                       color: lightGreyColor,
    //                     ),
    //                   ),
    //                   SizedBox(
    //                     width: 5.w,
    //                   ),
    //                   Text(
    //                     "reviews",
    //                     style: GoogleFonts.poppins(
    //                       fontSize: 16.sp,
    //                       fontWeight: FontWeight.w400,
    //                       color: lightGreyColor,
    //                     ),
    //                   ),
    //                   Text(
    //                     ")",
    //                     style: GoogleFonts.poppins(
    //                       fontSize: 16.sp,
    //                       fontWeight: FontWeight.w400,
    //                       color: lightGreyColor,
    //                     ),
    //                   ),
    //                 ],
    //               )
    //             ],
    //           )
    //         ],
    //       )
    //     ],
    //   ),
    // );
  }
}
