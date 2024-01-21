// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_plate/constants/color.dart';
import 'package:home_plate/views/components/custom_appbar.dart';
import 'package:home_plate/views/user/checkout/components/visa_card.dart';
// import 'package:testone/test/constants/color.dart';
// import 'package:testone/test/sample/components/visa_card.dart';
// import 'package:testone/test/sample/custom_app_bar.dart';

class WalletEmptyTransactionScreen extends StatefulWidget {
  const WalletEmptyTransactionScreen({super.key});
  @override
  State<WalletEmptyTransactionScreen> createState() =>
      _WalletEmptyTransactionScreenState();
}

class _WalletEmptyTransactionScreenState
    extends State<WalletEmptyTransactionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      appBar: CustomAppBar(
        title: "E-wallet",
        firsticon: Icons.search,
        secondicon: Icons.drag_indicator,
      ),
      body: Column(
        children: [
          VisaCard(),
          Padding(
            padding: EdgeInsets.only(
                left: 18.sp, right: 19.sp, top: 8.sp, bottom: 10.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Transaction History",
                  style: GoogleFonts.poppins(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    color: black,
                  ),
                ),
                Icon(
                  Icons.chevron_right_rounded,
                  color: primarycolor,
                  size: 30.0,
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Image.asset(
                "assets/images/home/emptytransaction.png",
                fit: BoxFit.contain,
              ),
              Positioned(
                top: 250.sp,
                left: 104.sp,
                right: 116.sp,
                bottom: 9.sp,
                child: Text(
                  "opps",
                  style: GoogleFonts.aoboshiOne(
                    fontSize: 40.sp,
                    fontWeight: FontWeight.w400,
                    color: black,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
