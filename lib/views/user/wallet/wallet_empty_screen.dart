// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_plate/constants/color.dart';
import 'package:home_plate/routes/routes_name.dart';
import 'package:home_plate/views/components/custom_appbar.dart';
// import 'package:home_plate/views/user/add_new_Card/add_new_card_screen.dart';
import 'package:home_plate/views/user/payment_method/components/new_card_button.dart';
// import 'package:testone/test/constants/color.dart';
// import 'package:testone/test/sample/custom_app_bar.dart';

class WalletEmptyScreen extends StatefulWidget {
  const WalletEmptyScreen({super.key});
  @override
  State<WalletEmptyScreen> createState() => _WalletScreenThreeState();
}

class _WalletScreenThreeState extends State<WalletEmptyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      appBar: CustomAppBar(
        title: "E-wallet",
        firsticon: Icons.search,
        secondicon: Icons.drag_indicator,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.sp),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 62.h,
            ),
            Image.asset(
              "assets/images/home/walletempty.png",
              fit: BoxFit.contain,
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              "No Wallet",
              style: GoogleFonts.aoboshiOne(
                fontSize: 20.sp,
                fontWeight: FontWeight.w400,
                color: black,
              ),
            ),
            SizedBox(
              height: 87.h,
            ),
            NewCardButton(
                text: "Add Card",
                ontap: () {
                  Navigator.pushNamed(context, add_new_card_screen_route);
                })
            // InkWell(
            //   child: Container(
            //     width: 357.w,
            //     height: 60.h,
            //     decoration: BoxDecoration(
            //       color: Color.fromRGBO(226, 154, 79, 0.20),
            //       borderRadius: BorderRadius.circular(
            //         20.sp,
            //       ),
            //     ),
            //     child: Center(
            //       child: Text(
            //         "Add Card",
            //         style: GoogleFonts.roboto(
            //             fontSize: 20.sp,
            //             fontWeight: FontWeight.w400,
            //             color: primarycolor),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
