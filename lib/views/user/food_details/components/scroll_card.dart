import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScrollCard extends StatefulWidget {
  final String imagePath;
  const ScrollCard({super.key, required this.imagePath});

  @override
  State<ScrollCard> createState() => _ScrollCardState();
}

class _ScrollCardState extends State<ScrollCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90.w,
      height: 95.h,
      margin: EdgeInsets.only(right: 17.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.r),
        child: Image.asset(
          widget.imagePath,
          width: double.infinity.w,
          height: double.infinity.h,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
