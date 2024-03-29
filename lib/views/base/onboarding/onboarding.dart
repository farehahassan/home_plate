// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_plate/routes/routes_name.dart';
// import 'package:home_plate/home_screen.dart';

// import 'package:home_plate/onboardlist.dart';
import 'package:home_plate/views/user/home/home_screen.dart';
import 'package:home_plate/views/base/onboarding/onboardlist.dart';
// / import 'package:onboarding/onboardlist.dart';

// import 'package:home_plate/onboardlist.dart';

// import 'home_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    // required this.currentIndex,
  });

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
                context, MaterialPageRoute(builder: (_) => const HomeScreen()));
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
                      color: const Color(0xffAAAAAA),
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
                                  ? const Color(0xffE29A4F)
                                  : const Color(0xffE7E7E7)),
                        ),
                      ),
                    )),
                SizedBox(
                  height: 10.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, login_screen_route);
                  },
                  child: Container(
                    width: 347.w,
                    height: 55.h,
                    decoration: BoxDecoration(
                      color: const Color(0xffE29A4F),
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
