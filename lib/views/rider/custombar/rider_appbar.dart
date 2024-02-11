// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_plate/constants/color.dart';

class RiderAppBar extends StatefulWidget implements PreferredSizeWidget {
  bool? center;
  RiderAppBar({super.key, this.center})
      : preferredSize = Size.fromHeight(kToolbarHeight);
  @override
  final Size preferredSize; // default is 56.0
  @override
  _RiderAppBarState createState() => _RiderAppBarState();
}

class _RiderAppBarState extends State<RiderAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: scaffoldColor,
      leadingWidth: 300.w,
      centerTitle: widget.center,
      leading: Padding(
        padding: EdgeInsets.only(left: 20.sp),
        child: RichText(
          text: TextSpan(
            // text: 'Home ',
            style: DefaultTextStyle.of(context).style,
            children: <TextSpan>[
              TextSpan(
                text: 'Home',
                style: GoogleFonts.aoboshiOne(
                  fontSize: 25.sp,
                  color: homecolor,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: 'Plate ',
                style: GoogleFonts.aoboshiOne(
                  fontSize: 25.sp,
                  color: primarycolor,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: 'Rider',
                style: GoogleFonts.aoboshiOne(
                  fontSize: 25.sp,
                  color: black,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
