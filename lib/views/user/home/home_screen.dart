// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_plate/views/components/food.dart';
import 'package:home_plate/views/user/home/components/country_cuisine_card.dart';
import 'package:home_plate/views/user/home/components/discount_card.dart';
import 'package:home_plate/views/user/home/components/see_all_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> _country = [
      "Pakistan",
      "India",
      "Brazilian",
      "Arabic",
    ];
    List<String> _image = [
      "assets/images/home/pakistan.png",
      "assets/images/home/indian.png",
      "assets/images/home/brazilian.png",
      "assets/images/home/arabic.png",
    ];
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
                child: SeeAllText(
                  text: "Country cuisine",
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Padding(
                  padding: EdgeInsets.only(left: 15.w, right: 15.w),
                  child: Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        // shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return CountryCuisineCard(
                            country: _country[index],
                            image: _image[index],
                          );
                        }),
                  )),
              Padding(
                  padding: EdgeInsets.only(left: 15.w, right: 15.w),
                  child: SeeAllText(
                    text: "Special Offers",
                  )),
              SizedBox(
                height: 15.h,
              ),
              DiscountCard(),
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
