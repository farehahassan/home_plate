import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_plate/constants/color.dart';

class RecipePicture extends StatefulWidget {
  const RecipePicture({super.key});

  @override
  State<RecipePicture> createState() => _RecipePictureState();
}

class _RecipePictureState extends State<RecipePicture> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: DottedBorder(
        borderType: BorderType.RRect,
        radius: Radius.circular(12),
        dashPattern: [6, 4],
        color: lightblackColor,
        strokeWidth: 1.w,
        strokeCap: StrokeCap.round,
        // padding: EdgeInsets.all(6),
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(
              12,
            ),
          ),
          child: Container(
            height: 160.h,
            width: double.infinity.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.photo_size_select_actual_rounded,
                  color: greyColor,
                  size: 30.sp,
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  "Add a recipe photo",
                  style: GoogleFonts.poppins(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: black,
                  ),
                ),
                Text(
                  "Click here to upload cover photo",
                  style: GoogleFonts.poppins(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: greyColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
