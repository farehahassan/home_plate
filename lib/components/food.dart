// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Food extends StatelessWidget {
  int index;
  Food({
    Key? key,
    required this.index,
  }) : super(key: key);

  List<String> _namesList = [
    "Hadija's House",
    "Zainab's House",
    "Farah's House"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 210.w,
      height: 280.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25.r),
      ),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              width: 190.w,
              height: 176.h,
              margin: EdgeInsets.only(top: 10.h),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20.sp),
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/food1.png",
                  ),
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            _namesList[index],
            style: GoogleFonts.aoboshiOne(fontSize: 22.sp),
          ),
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.sp),
            child: Row(
              children: [
                Text(
                  "2.4 km |",
                  style: GoogleFonts.roboto(color: Colors.black45),
                ),
                Icon(
                  Icons.star,
                  size: 20.sp,
                  color: Colors.amber,
                ),
                Text(
                  "5.9  (2.3k)",
                  style: GoogleFonts.roboto(fontSize: 12.sp),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
