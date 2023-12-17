import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DiscountCard extends StatelessWidget {
  const DiscountCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 15.sp,
      ),
      child: Container(
        width: 356.w,
        height: 165.h,
        decoration: BoxDecoration(
          color: Color(0xffE29A4F),
          borderRadius: BorderRadius.circular(25.r),
          image: DecorationImage(
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
            Spacer(),
            Padding(
              padding: EdgeInsets.only(right: 0.sp),
              child: ClipRRect(
                // borderRadius: BorderRadius.circular(20),
                child: SizedBox(
                  width: 190.w,
                  height: 190.h,
                  child: Image.asset(
                    "assets/images/home/0.png",

                    filterQuality: FilterQuality.high,
                    // fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
