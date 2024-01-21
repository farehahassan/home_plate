// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:home_plate/constants/color.dart';

class NotificationCard extends StatefulWidget {
  VoidCallback ontap;
  final String settingname;
  final String svg;
  final Color color;
  NotificationCard({
    super.key,
    required this.ontap,
    required this.settingname,
    required this.svg,
    required this.color,
  });

  @override
  State<NotificationCard> createState() => _NotificationCardState();
}

class _NotificationCardState extends State<NotificationCard> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.ontap,
      child: Container(
        margin: EdgeInsets.only(
          bottom: 20.sp,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(
                  // bottom: 20.sp,
                  ),
              width: 45.w,
              height: 45.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: widget.color,
                // color: black,
              ),
              child: Padding(
                padding: EdgeInsets.all(12.0.sp),
                child: SvgPicture.asset(
                  widget.svg,
                  width: 21.w,
                  height: 21.h,
                ),
              ),
            ),
            SizedBox(
              width: 20.w,
            ),
            Text(
              widget.settingname,
              style: GoogleFonts.poppins(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: black,
              ),
            ),
            const Spacer(),
            FlutterSwitch(
              activeColor: primarycolor,
              width: 48.0.w,
              height: 25.0.h,
              // valueFontSize: 25.0,
              toggleSize: 25.0,
              value: status,
              borderRadius: 25.0,
              padding: 3.0,
              // showOnOff: true,
              onToggle: (val) {
                setState(
                  () {
                    status = val;
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
