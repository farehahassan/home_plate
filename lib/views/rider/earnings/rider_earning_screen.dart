import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_plate/constants/color.dart';
import 'package:home_plate/views/components/custom_appbar.dart';
import 'package:home_plate/views/rider/earnings/components/recent_delivery_cards.dart';

class RiderEarningScreen extends StatefulWidget {
  const RiderEarningScreen({super.key});

  @override
  State<RiderEarningScreen> createState() => _RiderEarningScreenState();
}

class _RiderEarningScreenState extends State<RiderEarningScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      appBar: CustomAppBar(title: "My Earnings"),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.sp,
          vertical: 10.sp,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity.w,
                height: 120.h,
                color: white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        NumberTextDollar(
                          number: "67.87",
                          text: "Total Earnings",
                        ),
                        NumberText(
                          number: "67",
                          text: "Total Orders",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "Order fees: \$13.00",
                      style: GoogleFonts.poppins(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                        color: greyColor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              RecentDevliveryRow(
                text: "Recent Delivery",
                ontap: () {},
              ),
              SizedBox(
                height: 20.h,
              ),
              Column(
                children: List.generate(4, (index) => RecentDeliveryCard()),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class NumberTextDollar extends StatelessWidget {
  final String number;
  final String text;
  NumberTextDollar({super.key, required this.number, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "\$" + number,
          style: GoogleFonts.aoboshiOne(
            fontSize: 22.sp,
            color: primarycolor,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          text,
          style: GoogleFonts.poppins(
            fontSize: 10.sp,
            fontWeight: FontWeight.w400,
            color: greyColor,
          ),
        )
      ],
    );
  }
}

class NumberText extends StatelessWidget {
  final String number;
  final String text;
  NumberText({super.key, required this.number, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          number,
          style: GoogleFonts.aoboshiOne(
            fontSize: 22.sp,
            color: primarycolor,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          text,
          style: GoogleFonts.poppins(
            fontSize: 10.sp,
            fontWeight: FontWeight.w400,
            color: greyColor,
          ),
        )
      ],
    );
  }
}

class RecentDevliveryRow extends StatelessWidget {
  final String text;
  final VoidCallback ontap;
  const RecentDevliveryRow(
      {super.key, required this.text, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: GoogleFonts.poppins(
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            color: black,
          ),
        ),
        const Spacer(),
        InkWell(
            onTap: ontap,
            child: Icon(
              Icons.compare_arrows_outlined,
              size: 20.sp,
              color: black,
            ))
      ],
    );
  }
}
