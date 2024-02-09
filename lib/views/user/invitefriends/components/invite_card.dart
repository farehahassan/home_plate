import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_plate/constants/color.dart';

class InviteCard extends StatefulWidget {
  const InviteCard({super.key});

  @override
  State<InviteCard> createState() => _InviteCardState();
}

class _InviteCardState extends State<InviteCard> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15.sp),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/home/person1.png"),
            radius: 30.r,
          ),
          SizedBox(
            width: 10.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Ralph Edwards",
                style: GoogleFonts.poppins(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: black,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "Ralph Edwards",
                style: GoogleFonts.poppins(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w400,
                  color: lightGreyColor,
                ),
              ),
            ],
          ),
          Spacer(),
          InkWell(
            onTap: () {
              setState(() {
                isSelected = !isSelected;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                  color: isSelected ? scaffoldColor : primarycolor,
                  borderRadius: BorderRadius.circular(
                    15.r,
                  ),
                  border: Border.all(
                      color: isSelected ? primarycolor : primarycolor)),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.sp,
                  vertical: 10.sp,
                ),
                child: Text(
                  (isSelected ? "Invited" : "Invite"),
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: isSelected ? primarycolor : white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
