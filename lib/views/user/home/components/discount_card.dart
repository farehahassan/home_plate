import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DiscountCard extends StatelessWidget {
  final Color bgColor;
  final String discount;
  final String image;
  const DiscountCard(
      {super.key,
      required this.bgColor,
      required this.discount,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15.sp),
      height: 170.h,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(25.r),
        image: const DecorationImage(
            image: AssetImage("assets/images/home/bg.png"),
            repeat: ImageRepeat.repeatX,
            // alignment: Alignment.topLeft,
            fit: BoxFit.contain,
            filterQuality: FilterQuality.high),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.sp, top: 10.sp),
            child: Column(
              children: [
                Text(
                  discount,
                  style: GoogleFonts.purplePurse(
                      fontSize: 37.sp, color: Colors.black),
                ),
                Text(
                  "Best discount",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.rancho(
                      fontSize: 37.sp,
                      letterSpacing: -0.17,
                      color: Colors.black),
                ),
                Text(
                  "Offer",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.rancho(
                      fontSize: 37.sp,
                      letterSpacing: -0.17,
                      color: Colors.black),
                )
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.only(right: 0.sp),
            child: ClipRRect(
              // borderRadius: BorderRadius.circular(20),
              child: SizedBox(
                width: 180.w,
                height: 190.h,
                child: Image.asset(
                  image,

                  filterQuality: FilterQuality.high,
                  // fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
