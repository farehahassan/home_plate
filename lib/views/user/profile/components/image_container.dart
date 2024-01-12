import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_plate/constants/color.dart';

class ImageContainer extends StatefulWidget {
  const ImageContainer({super.key});

  @override
  State<ImageContainer> createState() => _ImageContainerState();
}

class _ImageContainerState extends State<ImageContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130.w,
      height: 130.h,
      // color: black,
      child: Stack(
        children: [
          Container(
            width: 130.w,
            height: 130.w,
            decoration: BoxDecoration(
              // color: white,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.grey.shade400,
              ),
            ),
            child: Image.asset(
              "assets/images/home/00.png",
            ),
          ),
          Positioned(
            bottom: 0.sp,
            right: 0.sp,
            child: SvgPicture.asset(
              "assets/svgs/social/pencile.svg",
              height: 30.h,
            ),
          ),
        ],
      ),
    );
  }
}
