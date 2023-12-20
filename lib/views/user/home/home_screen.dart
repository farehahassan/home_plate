// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_plate/constants/color.dart';
import 'package:home_plate/routes/routes_name.dart';
import 'package:home_plate/views/components/food.dart';
import 'package:home_plate/views/user/home/components/country_cuisine_card.dart';
import 'package:home_plate/views/user/home/components/discount_card.dart';
import 'package:home_plate/views/user/home/components/see_all_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> _namesList = [
      "Hadija's House",
      "Zainab's House",
      "Farah's House"
    ];
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
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, notification_screen_route);
                      },
                      child: Container(
                        width: 45.w,
                        height: 45.h,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black38),
                            borderRadius: BorderRadius.circular(15.r)),
                        child: Center(
                          child: Icon(Icons.notifications_outlined),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, cart_screen_route);
                      },
                      child: Container(
                        width: 45.w,
                        height: 45.h,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black38),
                            borderRadius: BorderRadius.circular(15.r)),
                        child: Center(
                          child: Icon(Icons.shopping_bag_outlined),
                        ),
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
                    prefixIcon: Icon(
                      Icons.search,
                      color: borderOutlineColor,
                    ),
                    hintText: "What are you craving?",
                    hintStyle: GoogleFonts.poppins(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: borderOutlineColor),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: borderOutlineColor,
                        ),
                        borderRadius: BorderRadius.circular(15.r)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: borderOutlineColor,
                        ),
                        borderRadius: BorderRadius.circular(15.r)),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: borderOutlineColor),
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
                padding: EdgeInsets.symmetric(horizontal: 15.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    _image.length,
                    (index) => CountryCuisineCard(
                      country: _country[index],
                      image: _image[index],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 4.sp,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15.sp,
                ),
                child: Column(
                  children: [
                    SeeAllText(text: "Order again"),
                    SizedBox(
                      height: 6.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Food(
                          name: _namesList[0],
                        ),
                        Food(
                          name: _namesList[0],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    SeeAllText(
                      text: "Special Offers",
                      ontap: () {
                        Navigator.pushNamed(
                            context, special_offers_screen_route);
                      },
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    DiscountCard(
                      bgColor: primarycolor,
                      discount: "25%",
                      image: "assets/images/home/0.png",
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
