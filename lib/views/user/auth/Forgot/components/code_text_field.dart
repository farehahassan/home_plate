import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_plate/constants/color.dart';

class CodeTextField extends StatefulWidget {
  const CodeTextField({super.key});

  @override
  State<CodeTextField> createState() => _CodeTextFieldState();
}

class _CodeTextFieldState extends State<CodeTextField> {
  @override
  Widget build(BuildContext context) {
    return   Container(
          width: 56.w,
          height: 56.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            border: Border.all(
              color: borderOutlineColor,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 18.sp,
              vertical: 5.sp,
            ),
            child: TextFormField(
              style: GoogleFonts.roboto(
                fontSize: 25.sp,
                fontWeight: FontWeight.w400,
                color: black,
              ),
              decoration: const InputDecoration(
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
              ),
            ),
          ),
        );
  }
}