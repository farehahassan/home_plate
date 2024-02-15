// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_plate/constants/color.dart';
import 'package:home_plate/routes/routes_name.dart';

class TrackOrderScreen extends StatefulWidget {
  const TrackOrderScreen({super.key});

  @override
  State<TrackOrderScreen> createState() => _TrackOrderScreenState();
}

class _TrackOrderScreenState extends State<TrackOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity.w,
        height: double.infinity.h,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/home/fullmap.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 40.sp, left: 20.sp, right: 20.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () => Navigator.pop(context),
                child: Icon(
                  Icons.arrow_back_sharp,
                  size: 30.sp,
                ),
              ),
              Spacer(),
              Container(
                margin: EdgeInsets.only(
                  bottom: 20.sp,
                ),
                // alignment: Alignment.bottomCenter,
                width: 360.w,
                height: 315.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    15.sp,
                  ),
                  color: white,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.sp,
                    vertical: 10.sp,
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 55.w,
                        height: 4.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            5.r,
                          ),
                          color: primarycolor,
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Distance(),
                      SizedBox(
                        height: 5.h,
                      ),
                      DistanceText(),
                      SizedBox(
                        height: 20.h,
                      ),
                      ProfileDetials(),
                      SizedBox(
                        height: 20.h,
                      ),
                      FieldArea(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Distance extends StatelessWidget {
  const Distance({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        // text: 'Home ',
        style: DefaultTextStyle.of(context).style,
        children: <TextSpan>[
          TextSpan(
            text: '3 min  ',
            style: GoogleFonts.poppins(
              fontSize: 22.sp,
              color: distanceColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          TextSpan(
            text: '(2 Km)',
            style: GoogleFonts.poppins(
              fontSize: 22.sp,
              color: distanceColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

class DistanceText extends StatelessWidget {
  const DistanceText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Fastest route now due to traffic condition",
      style: GoogleFonts.poppins(
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        color: black,
      ),
    );
  }
}

class ProfileDetials extends StatelessWidget {
  const ProfileDetials({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.sp),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, delivery_boy_detail_screen_route);
        },
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/home/person1.png"),
              radius: 25.r,
            ),
            SizedBox(
              width: 10.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Ronald Richards",
                  style: GoogleFonts.poppins(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: black,
                  ),
                ),
                Text(
                  "New Jersey..... ",
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: lightGreyColor,
                  ),
                ),
              ],
            ),
            Spacer(),
            Icon(
              Icons.call,
              color: primarycolor,
            ),
            SizedBox(
              width: 10.w,
            ),
            Icon(
              Icons.chat,
              color: primarycolor,
            ),
          ],
        ),
      ),
    );
  }
}

class FieldArea extends StatelessWidget {
  const FieldArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 10.sp,
      ),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 30.w,
                height: 30.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 236, 210, 182),
                ),
                child: Center(
                  child: Container(
                    width: 15.w,
                    height: 15.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: primarycolor,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Container(
                  width: 30.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 236, 210, 182),
                  ),
                  child: Center(
                      child: Icon(
                    Icons.location_on,
                    color: primarycolor,
                  )))
            ],
          ),
          Spacer(),
          Column(
            children: [
              FieldText(),
              SizedBox(
                height: 20.h,
              ),
              FieldText(),
            ],
          ),
        ],
      ),
    );
  }
}

class FieldText extends StatelessWidget {
  const FieldText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 260.w,
      child: TextFormField(
          decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            25.r,
          ),
          borderSide: BorderSide(color: lightGreyColor, width: 2.w),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            25.r,
          ),
          borderSide: BorderSide(
            color: lightGreyColor,
            width: 2.w,
          ),
        ),
        filled: true,
        fillColor: white,
        hintText: "HomePlate",
        hintStyle: GoogleFonts.poppins(
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          color: greyColor,
        ),
      )),
    );
  }
}
