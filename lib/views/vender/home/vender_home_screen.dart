// ignore_for_file: prefer_const_constructors, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_plate/constants/color.dart';
import 'package:home_plate/routes/routes_name.dart';
import 'package:home_plate/views/components/food.dart';
// import 'package:home_plate/views/user/home/components/country_cuisine_card.dart';
// import 'package:home_plate/views/user/home/components/discount_card.dart';
import 'package:home_plate/views/user/home/components/see_all_text.dart';

class VenderHomeScreen extends StatefulWidget {
  const VenderHomeScreen({super.key});

  @override
  State<VenderHomeScreen> createState() => _VenderHomeScreenState();
}

class _VenderHomeScreenState extends State<VenderHomeScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> _foodName = [
      'Penne Pasta',
      "Fried Chicken",
      "Chicken Skewers",
      "Maxican Tacos",
    ];
    List<String> _distance = [
      "3.5",
      "2.9",
      "4.2",
      "1.8",
    ];
    List<String> _rating = [
      "4.9",
      "3.8",
      "5.0",
      "2.7",
    ];
    List<String> _ratingCount = [
      "3.5",
      "2.3",
      "1.9",
      "7.8",
    ];
    List<String> _price = [
      "10.00",
      "12.00",
      "80.90",
      "23.00",
    ];
    List<String> _delivery = [
      "20.00",
      "10.00",
      "19.00",
      "9.00",
    ];
    // List<String> _country = [
    //   "Pakistan",
    //   "India",
    //   "Brazilian",
    //   "Arabic",
    // ];
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
                        Navigator.pushNamed(
                            context, vender_notification_screen_route);
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
                      borderRadius: BorderRadius.circular(15.r),
                    ),
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
              SizedBox(
                height: 4.sp,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15.sp,
                ),
                child: Column(
                  children: [
                    SeeAllText(text: "Your Popular Food"),
                    SizedBox(
                      height: 6.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Food(
                          deliveryFee: _delivery[1],
                          distance: _distance[1],
                          foodImage: _image[1],
                          foodName: _foodName[1],
                          price: _price[1],
                          rating: _rating[1],
                          ratingCount: _ratingCount[1],
                        ),
                        Food(
                          deliveryFee: _delivery[2],
                          distance: _distance[2],
                          foodImage: _image[2],
                          foodName: _foodName[2],
                          price: _price[2],
                          rating: _rating[2],
                          ratingCount: _ratingCount[2],
                        ),
                        // Food(
                        //   name: _namesList[0],
                        // ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15.sp,
                ),
                child: Column(
                  children: [
                    SeeAllText(
                      text: "Recent Add Foods",
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        2,
                        (index) => Food(
                          foodName: _foodName[index],
                          distance: _distance[index],
                          rating: _rating[index],
                          ratingCount: _ratingCount[index],
                          price: _price[index],
                          deliveryFee: _delivery[index],
                          foodImage: _image[index],
                        ),
                      ),
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
