import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_plate/constants/color.dart';
import 'package:home_plate/views/components/empty_screen_widget.dart';

class CancelScreen extends StatefulWidget {
  const CancelScreen({super.key});

  @override
  State<CancelScreen> createState() => _CancelScreenState();
}

class _CancelScreenState extends State<CancelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10.sp,
          vertical: 20.sp,
        ),
        child: Column(
          children: List.generate(
            5,
            (index) => Container(
              margin: EdgeInsets.only(
                bottom: 15.sp,
              ),
              width: double.infinity.w,
              height: 95.h,
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 5.sp,
                ),
                child: Row(
                  children: [
                    Container(
                      width: 100.w,
                      height: 80.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          10.r,
                        ),
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/home/food1.png",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Mixed Fried Meat",
                              style: GoogleFonts.aoboshiOne(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              width: 40.w,
                            ),
                            SvgPicture.asset("assets/svgs/social/cross.svg"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "2",
                              style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(0, 0, 0, 0.3)),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              "items",
                              style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(0, 0, 0, 0.3)),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              "|",
                              style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(0, 0, 0, 0.3)),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              "2.7",
                              style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(0, 0, 0, 0.3)),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              "km",
                              style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(0, 0, 0, 0.3)),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "\$",
                              style: GoogleFonts.aoboshiOne(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                                color: dollarColor,
                              ),
                            ),
                            Text(
                              "78.00",
                              style: GoogleFonts.aoboshiOne(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: dollarColor,
                              ),
                            ),

                            // Spacer(),
                            SizedBox(
                              width: 60.w,
                            ),
                            InkWell(
                              onTap: () {
                                // Navigator.pushNamed(
                                //     context, track_order_screen_route);
                              },
                              child: Container(
                                width: 90.w,
                                height: 30.h,
                                // color: primarycolor,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  border: Border.all(
                                    color: primarycolor,
                                    width: 1.w,
                                  ),
                                  color: white,
                                ),
                                child: Center(
                                  child: Text(
                                    "Cancelled",
                                    style: GoogleFonts.poppins(
                                      fontSize: 10.sp,
                                      color: primarycolor,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CancleEmpty extends StatelessWidget {
  const CancleEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      body: const Center(
        child: EmptyScreen(
          vector: "assets/images/home/ship.png",
          mainText: "Empty",
          subText:
              "Once you add items from a restaurant or store,your cart will appear here.",
        ),
      ),
    );
  }
}
