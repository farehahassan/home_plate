// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_plate/constants/color.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  IconData? firsticon;
  IconData? secondicon;
  VoidCallback? firsticontap;
  VoidCallback? secondicontap;
  final String title;
  CustomAppBar({
    super.key,
    required this.title,
    this.firsticon,
    this.firsticontap,
    this.secondicon,
    this.secondicontap,
  }) : preferredSize = Size.fromHeight(kToolbarHeight);
  @override
  final Size preferredSize; // default is 56.0
  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: scaffoldColor,
        actions: [
          IconButton(
            onPressed: widget.firsticontap,
            icon: Icon(
              widget.firsticon,
              size: 27.sp,
              color: black,
            ),
          ),
          IconButton(
            onPressed: widget.secondicontap,
            icon: Icon(
              widget.secondicon,
              size: 27.sp,
              color: black,
            ),
          ),
        ],
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_sharp,
              size: 30.sp,
            )),
        title: Text(
          widget.title,
          style: GoogleFonts.aoboshiOne(
            fontSize: 20.sp,
            fontWeight: FontWeight.w400,
            color: black,
          ),
        ));
  }
}
