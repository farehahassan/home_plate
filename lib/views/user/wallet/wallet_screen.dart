// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables,

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_plate/constants/color.dart';
import 'package:home_plate/views/components/custom_appbar.dart';
import 'package:home_plate/views/user/checkout/components/visa_card.dart';
import 'package:home_plate/views/user/wallet/components/transaction_history_card.dart';
// import 'package:testone/test/constants/color.dart';
// import 'package:testone/test/sample/components/transaction_history_card.dart';
// import 'package:testone/test/sample/components/visa_card.dart';
// import 'package:testone/test/sample/custom_app_bar.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});
  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  List<String> foodName = [
    "Bessie Cooper",
    "Albert Flores",
    "Darlene Robertson",
    "Dianne Russell",
    "Guy Hawkins",
    "Arlene McCoy",
  ];
  List<String> price = [
    "20.00",
    "53.00",
    "62.35",
    "90.00",
    "10.90",
    "60.00",
  ];
  List<String> image = [
    "assets/images/home/pakistan.png",
    "assets/images/home/indian.png",
    "assets/images/home/brazilian.png",
    "assets/images/home/arabic.png",
    "assets/images/home/brazilian.png",
    "assets/images/home/arabic.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      appBar: CustomAppBar(
        title: "E-wallet",
        firsticon: Icons.search,
        secondicon: Icons.drag_indicator,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            VisaCard(),
            Padding(
              padding: EdgeInsets.only(
                left: 18.sp,
                right: 19.sp,
                top: 8.sp,
                bottom: 10.sp,
              ),
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
            Column(
              children: List.generate(
                foodName.length,
                (index) => TransactionHistoryCard(
                  foodName: foodName[index],
                  price: price[index],
                  image: image[index],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
