import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_plate/constants/color.dart';

class Food extends StatefulWidget {
  final String foodName;
  final String distance;
  final String rating;
  final String ratingCount;
  final String price;
  final String deliveryFee;
  final String foodImage;
  Food({
    super.key,
    required this.foodName,
    required this.distance,
    required this.rating,
    required this.ratingCount,
    required this.price,
    required this.deliveryFee,
    required this.foodImage,
  });

  @override
  State<Food> createState() => _FoodState();
}

class _FoodState extends State<Food> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 10.sp,
      ),
      width: 180.w,
      // height: 280.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              width: 156.w,
              height: 146.h,
              margin: EdgeInsets.only(top: 10.h),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(15.r),
                image: DecorationImage(
                  image: AssetImage(
                    widget.foodImage,
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 7.sp),
            child: Text(
              widget.foodName,
              style: GoogleFonts.aoboshiOne(fontSize: 20.sp),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 7.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        // text: 'Home ',
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          TextSpan(
                            text: widget.distance,
                            style: GoogleFonts.roboto(
                              fontSize: 12.sp,
                              color: Colors.black45,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text: " km",
                            style: GoogleFonts.roboto(
                              fontSize: 12.sp,
                              color: Colors.black45,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Text(
                    //   widget.distance,
                    //   style: GoogleFonts.roboto(
                    //       color: Colors.black45, fontSize: 12.sp),
                    // ),
                    Text(
                      " |   ",
                      style: GoogleFonts.roboto(
                          color: Colors.black45, fontSize: 12.sp),
                    ),
                  ],
                ),
                Icon(
                  Icons.star,
                  size: 20.sp,
                  color: Colors.amber,
                ),
                Row(
                  children: [
                    Text(
                      widget.rating,
                      style: GoogleFonts.roboto(
                        fontSize: 12.sp,
                        color: black,
                      ),
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    RichText(
                      text: TextSpan(
                        // text: 'Home ',
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          TextSpan(
                            text: '(',
                            style: GoogleFonts.roboto(
                              fontSize: 12.sp,
                              color: black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text: widget.ratingCount,
                            style: GoogleFonts.roboto(
                              fontSize: 12.sp,
                              color: black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text: ")",
                            style: GoogleFonts.roboto(
                              fontSize: 12.sp,
                              color: black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Text(
                    //   widget.ratingCount,
                    //   style: GoogleFonts.roboto(
                    //     fontSize: 12.sp,
                    //     color: black,
                    //   ),
                    // ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 7.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    // text: 'Home ',
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(
                        text: '\$',
                        style: GoogleFonts.aoboshiOne(
                          fontSize: 10.sp,
                          color: dollarColor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: widget.price,
                        style: GoogleFonts.aoboshiOne(
                          fontSize: 14.sp,
                          color: primarycolor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 7.w,
                ),
                Icon(
                  Icons.pedal_bike,
                  size: 16.sp,
                  color: dollarColor,
                ),
                RichText(
                  text: TextSpan(
                    // text: 'Home ',
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(
                        text: '\$',
                        style: GoogleFonts.aoboshiOne(
                          fontSize: 10.sp,
                          color: primarycolor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: widget.deliveryFee,
                        style: GoogleFonts.aoboshiOne(
                          fontSize: 10.sp,
                          color: primarycolor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                // Row(
                //   children: [
                //     Icon(
                //       Icons.pedal_bike_rounded,
                //       color: dollarColor,
                //       size: 16.sp,
                //     ),
                //     Text(
                //       " \$10.00",
                //       style: GoogleFonts.aoboshiOne(
                //         fontSize: 10.sp,
                //         fontWeight: FontWeight.w400,
                //         color: primarycolor,
                //       ),
                //     ),
                //   ],
                // ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      isClicked = true;
                    });
                  },
                  icon: isClicked
                      ? Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                      : Icon(
                          Icons.favorite_outline,
                          color: borderOutlineColor,
                        ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
