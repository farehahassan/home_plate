import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_plate/constants/color.dart';
import 'package:home_plate/routes/routes_name.dart';
import 'package:home_plate/views/components/heading.dart';

class AddressCard extends StatelessWidget {
  final String main;
  final String address;
  const AddressCard({super.key, required this.main, required this.address});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: white,
      ),
      child: Padding(
        padding: EdgeInsets.all(5.0.sp),
        child: Row(
          children: [
            Container(
              width: 100.w,
              height: 80.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                image: DecorationImage(
                  image: AssetImage("assets/images/home/map.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 15.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 7.h,
                ),
                Text(
                  main,
                  style: GoogleFonts.poppins(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: black,
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Wrap(
                  direction: Axis.vertical,
                  children: [
                    Container(
                      width: 160.w,
                      child: Text(
                        address,
                        softWrap: true,
                        style: GoogleFonts.poppins(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: borderOutlineColor,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 4.h,
                ),
              ],
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, address_screen_route);
              },
              child: Row(
                children: [
                  Text(
                    "Change",
                    style: GoogleFonts.poppins(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                      color: primarycolor,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 12.sp,
                    color: primarycolor,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
