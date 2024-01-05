// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_plate/constants/color.dart';
import 'package:home_plate/routes/routes_name.dart';
import 'package:home_plate/views/user/profile/components/arrow_cards.dart';
import 'package:home_plate/views/user/profile/components/notification_card.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      body: Padding(
        padding: EdgeInsets.only(
          top: 60.sp,
          // vertical: 60.sp,
          left: 18.sp,
          right: 18.sp,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 80.w,
                    height: 60.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/images/home/profile.png"),
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ronaldo Richards",
                          style: GoogleFonts.poppins(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500,
                            color: black,
                          ),
                        ),
                        Text(
                          "Simpleemail@gmail.com",
                          style: GoogleFonts.aoboshiOne(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey.shade500,
                          ),
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, edit_profile_screen_route);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 50.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: primarycolor,
                        ),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Center(
                        child: Text(
                          "Edit",
                          style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: primarycolor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 21.h,
              ),
              Container(
                width: double.infinity.w,
                height: 0.5.h,
                color: lightblackColor,
              ),
              SizedBox(
                height: 19.h,
              ),
              Column(
                children: [
                  ArrowCards(
                    ontap: () {},
                    settingname: "E-wallet",
                    svg: "assets/svgs/social/Ewallet.svg",
                    color: Color.fromRGBO(226, 154, 79, 0.1),
                  ),
                  ArrowCards(
                    ontap: () {
                      Navigator.pushNamed(context, payment_method_screen_route);
                    },
                    settingname: "Payment Method",
                    svg: "assets/svgs/social/payment.svg",
                    color: Color.fromRGBO(0, 210, 197, 0.10),
                  ),
                  ArrowCards(
                    ontap: () {
                      Navigator.pushNamed(context, address_screen_route);
                    },
                    settingname: "Address",
                    svg: "assets/svgs/social/location.svg",
                    color: Color.fromRGBO(27, 172, 75, 0.1),
                  ),
                  ArrowCards(
                    ontap: () {},
                    settingname: "My Favorite",
                    svg: "assets/svgs/social/Heart.svg",
                    color: Color.fromRGBO(244, 67, 54, 0.10),
                  ),
                  NotificationCard(
                    ontap: () {},
                    settingname: "Notification",
                    svg: "assets/svgs/social/notification.svg",
                    color: Color.fromRGBO(0, 99, 247, 0.10),
                  ),
                  ArrowCards(
                    ontap: () {},
                    settingname: "Language",
                    svg: "assets/svgs/social/globe.svg",
                    color: Color.fromRGBO(244, 67, 54, 0.10),
                  ),
                  ArrowCards(
                    ontap: () {},
                    settingname: "Invite Friends",
                    svg: "assets/svgs/social/mulUser.svg",
                    color: Color.fromRGBO(69, 90, 100, 0.10),
                  ),
                  ArrowCards(
                    ontap: () {},
                    settingname: "Help Center",
                    svg: "assets/svgs/social/help.svg",
                    color: Color.fromRGBO(244, 166, 241, 0.10),
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 130.w,
                      height: 55.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Color(0xffEF554A),
                      ),
                      child: Center(
                        child: Text(
                          "Logout",
                          style: GoogleFonts.poppins(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
