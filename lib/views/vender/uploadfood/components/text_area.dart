import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_plate/constants/color.dart';

class TextAreaField extends StatefulWidget {
  final int? maxlength;
  final Widget? icon;
  final Color? iconcolor;
  final double? width;
  final int? maxlines;
  final String fieldName;
  const TextAreaField(
      {super.key,
      this.maxlength,
      this.icon,
      this.iconcolor,
      this.width,
      required this.fieldName,
      this.maxlines});

  @override
  State<TextAreaField> createState() => _TextAreaFieldState();
}

class _TextAreaFieldState extends State<TextAreaField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.fieldName,
          style: GoogleFonts.poppins(
            color: lightblackColor,
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        Container(
          width: widget.width,
          child: TextFormField(
            maxLength: widget.maxlength,
            maxLines: widget.maxlines,
            style: GoogleFonts.poppins(
              color: black,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
            decoration: InputDecoration(
              suffixIcon: widget.icon,
              suffixIconColor: widget.iconcolor,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  10.r,
                ),
                borderSide: BorderSide(
                  color: greyColor,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  10.r,
                ),
                borderSide: BorderSide(
                  color: greyColor,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
