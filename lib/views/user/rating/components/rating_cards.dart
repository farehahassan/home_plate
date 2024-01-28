import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:givestarreviews/givestarreviews.dart';
import 'package:home_plate/constants/color.dart';
import 'package:home_plate/views/components/heading.dart';
import 'package:home_plate/views/user/auth/components/gt_walsheim_font.dart';

class RatingCard extends StatelessWidget {
  const RatingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 10.sp,
      ),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(
                  "assets/images/home/profile.png",
                ),
                radius: 25.r,
              ),
              SizedBox(
                width: 15.h,
              ),
              Heading(
                text: "Bessie Cooper",
                fontsize: 14.sp,
                color: black,
              ),
              Spacer(),
              StarRating(
                size: 20.sp,
                onChanged: (rate) {},
                inactiveStarColor: Colors.amber.shade300,
              ),
            ],
          ),
          SizedBox(
            height: 13.h,
          ),
          GtFont(
            text:
                "So yes, the alcohol (ethanol) in hand sanitizers can be absorbed through the skin, but no, it would ",
            fontsize: 12.sp,
            color: black,
            fontWeight: FontWeight.w400,
          ),
          SizedBox(
            height: 3.h,
          ),
          Row(
            children: [
              Icon(
                Icons.favorite,
                color: Colors.red,
                size: 20.sp,
              ),
              SizedBox(
                width: 5.w,
              ),
              GtFont(
                text: "185",
                fontsize: 12.sp,
                color: black,
                fontWeight: FontWeight.w400,
              ),
              SizedBox(
                width: 33.w,
              ),
              GtFont(
                text: "02:10 pm",
                fontsize: 12.sp,
                color: lightGreyColor,
                fontWeight: FontWeight.w400,
              ),
            ],
          )
        ],
      ),
    );
  }
}
