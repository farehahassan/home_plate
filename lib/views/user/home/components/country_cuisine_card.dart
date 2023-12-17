// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:home_plate/constants/color.dart';

class CountryCuisineCard extends StatelessWidget {
  final String country;
  final String image;
  CountryCuisineCard({
    Key? key,
    required this.country,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Container(
            width: 80.w,
            height: 80.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                 image,
                ),
              ),
              borderRadius: BorderRadius.circular(
                10.r,
              ),
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          Text(
            country,
            style: GoogleFonts.inter(
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
              color: black,
            ),
          )
        ],
      ),
    );
  }
}
