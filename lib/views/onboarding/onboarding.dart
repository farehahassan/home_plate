// ignore_for_file: public_member_api_docs, sort_constructors_first, unused_import
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_plate/views/auth/login_page.dart';
import 'package:home_plate/views/home/home_screen.dart';

import 'package:home_plate/views/onboarding/onboardlist.dart';
import 'package:home_plate/routes/routes_name.dart';
// / import 'package:onboarding/onboardlist.dart';

// import 'package:home_plate/onboardlist.dart';

// import 'home_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
    // required this.currentIndex,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => HomeScreen()));
          },
          child: Text(
            "Skip",
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w400),
          ),
        ),
        SizedBox(
          width: 20.w,
        )
      ]),
      body: PageView.builder(
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        itemCount: pages.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.sp,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  pages[index].image,
                  width: 250.w,
                ),
                Text(
                  pages[index].title,
                  style: GoogleFonts.aoboshiOne(
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.17.sp,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  pages[index].discription,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                      color: Color(0xffAAAAAA),
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 19.h,
                ),
                Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      3,
                      (index) => Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.sp),
                        child: Container(
                          height: currentIndex == index ? 13.h : 10.h,
                          width: currentIndex == index ? 13.w : 10.w,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: currentIndex == index
                                  ? Color(0xffE29A4F)
                                  : Color(0xffE7E7E7)),
                        ),
                      ),
                    )),
                SizedBox(
                  height: 28.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, login_screen_route);
                  },
                  child: Container(
                    width: 347.w,
                    height: 55.h,
                    decoration: BoxDecoration(
                      color: Color(0xffE29A4F),
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Center(
                        child: Text(
                      currentIndex == pages.length - 1 ? "Start" : "Next",
                      style: GoogleFonts.roboto(
                          fontSize: 20.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    )),
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
