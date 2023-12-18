// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:home_plate/constants/color.dart';

class PaymentCard extends StatelessWidget {
  VoidCallback ontap;
  final String svg;
  PaymentCard({
    Key? key,
    required this.ontap,
    required this.svg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: 70.w,
        height: 70.h,
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Center(
          child: SvgPicture.asset(
            svg,
          ),
        ),
      ),
    );
  }
}
