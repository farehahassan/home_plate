// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_plate/constants/color.dart';
// import 'package:testone/test/constants/color.dart';

class OrderCardWidget extends StatefulWidget {
  final String img;
  final String heading;
  final String item;
  final String distance;
  final String prize;
  // //btnprops
  final String btnText;
  final Color btnTextColor;
  final Color btnBg;
  final Color btnBr;

  const OrderCardWidget({
    super.key,
    required this.img,
    required this.heading,
    required this.item,
    required this.distance,
    required this.prize,
    required this.btnText,
    required this.btnBg,
    required this.btnBr,
    required this.btnTextColor,
  });

  @override
  State<OrderCardWidget> createState() => _OrderCardWidgetState();
}

class _OrderCardWidgetState extends State<OrderCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.w,
      height: 95.h,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(15.r),
      ),
      // parent row[having all the childs in form of columns]
      child: Row(
        children: [
          SizedBox(
            width: 8.w,
          ),
          // this contain image

          Image.asset(
            widget.img,
            width: 100.w,
            height: 80.h,
            fit: BoxFit.cover,
          ),
          SizedBox(
            width: 12.w,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.heading,
                style: GoogleFonts.aoboshiOne(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.item,
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
                    widget.distance,
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
                    widget.prize,
                    style: GoogleFonts.aoboshiOne(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: dollarColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("lib/test/assets/images/cross.png"),
              SizedBox(
                height: 28.h,
              ),
              ElevatedButton(
                onPressed: () {}, // Specify the onPressed callback
                style: ElevatedButton.styleFrom(
                  backgroundColor: widget.btnBg,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    side: BorderSide(color: widget.btnBr, width: 1),
                  ),
                  minimumSize: Size(90.sp, 30.sp),
                ),
                child: Center(
                  child: Text(
                    widget.btnText,
                    style: GoogleFonts.aoboshiOne(
                      color: widget.btnTextColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 10.sp,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
