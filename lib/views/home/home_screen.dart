// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_plate/components/food.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEFEFEF),
      // appBar: AppBar(
      //   leadingWidth: 200.w,
      //   leading: Padding(
      //     padding: EdgeInsets.only(
      //       left: 20.sp,
      //     ),

      //   ),
      // ),
      body: Padding(
        // padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 60.sp),
        padding: EdgeInsets.only(top: 60),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15.w, right: 15.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 50.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("assets/images/home/profile.png"),
                            filterQuality: FilterQuality.high,
                            fit: BoxFit.contain),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.sp, top: 5.sp),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Deliver to",
                            style: GoogleFonts.roboto(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.black38),
                          ),
                          Text(
                            "Ali Tarek",
                            style: GoogleFonts.aoboshiOne(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: 45.w,
                      height: 45.h,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black38),
                          borderRadius: BorderRadius.circular(15.r)),
                      child: Center(
                        child: Icon(Icons.shopping_bag_outlined),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.w, right: 15.w),
                child: Text(
                  "What would you like\nto order",
                  style: GoogleFonts.aoboshiOne(
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.w, right: 15.w),
                child: TextField(
                  decoration: InputDecoration(
                    prefix: Icon(
                      Icons.search,
                      size: 20.sp,
                      color: Colors.black38,
                    ),
                    hintText: "What are you craving?",
                    hintStyle: GoogleFonts.poppins(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.black38),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black38,
                        ),
                        borderRadius: BorderRadius.circular(15.r)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black38,
                        ),
                        borderRadius: BorderRadius.circular(15.r)),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black38),
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.w, right: 15.w),
                child: Row(
                  children: [
                    Text(
                      "Special Offers",
                      style: GoogleFonts.aoboshiOne(
                          fontSize: 18.sp, fontWeight: FontWeight.w400),
                    ),
                    Spacer(),
                    Text(
                      "See all",
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.orange),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.w, right: 15.w),
                child: Container(
                  width: 356.w,
                  height: 165.h,
                  decoration: BoxDecoration(
                    color: Color(0xffE29A4F),
                    borderRadius: BorderRadius.circular(25.r),
                    image: DecorationImage(
                        image: AssetImage("assets/images/home/bg.png"),
                        alignment: Alignment.topLeft,
                        filterQuality: FilterQuality.high),
                  ),
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.sp, top: 10.sp),
                            child: Container(
                              // color: Colors.red,
                              child: Column(
                                children: [
                                  Text(
                                    "25%",
                                    style: GoogleFonts.purplePurse(
                                        fontSize: 30.sp, color: Colors.black),
                                  ),
                                  Text(
                                    "Best discount\n Offer",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.rancho(
                                        fontSize: 37.sp,
                                        letterSpacing: -0.17,
                                        color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10.sp),
                            child: ClipRRect(
                              // borderRadius: BorderRadius.circular(20),
                              child: Container(
                                width: 125.w,
                                height: 150.h,
                                child: Image.asset(
                                  "assets/images/home/food.png",
                                  filterQuality: FilterQuality.high,
                                  // fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.w, right: 15.w),
                child: Row(
                  children: [
                    Text(
                      "Popular Foods",
                      style: GoogleFonts.aoboshiOne(
                        fontSize: 18.sp,
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "See all",
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.orange),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Food(
                      index: 0,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Food(
                      index: 1,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Food(
                      index: 2,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
