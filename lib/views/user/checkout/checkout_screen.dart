import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_plate/constants/color.dart';
import 'package:home_plate/routes/routes_name.dart';
import 'package:home_plate/views/components/custom_appbar.dart';
import 'package:home_plate/views/components/orange_button.dart';
import 'package:home_plate/views/components/sub_heading.dart';
import 'package:home_plate/views/user/checkout/components/address_card.dart';
import 'package:home_plate/views/user/checkout/components/payment_card.dart';
import 'package:home_plate/views/user/checkout/components/visa_card.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({super.key});

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      appBar: CustomAppBar(title: "Checkout"),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.sp,
          vertical: 20.sp,
        ),
        child: Column(
          children: [
            SubHeading(
              subHeading: "Shipping to",
            ),
            SizedBox(
              height: 10.sp,
            ),
            AddressCard(
              main: "Home",
              address: "3517 W. Gray St. Utica, Pennsylvania 57867",
            ),
            SizedBox(
              height: 15.h,
            ),
            SubHeading(
              subHeading: "Payment Method",
              icon: Icons.arrow_forward_ios_sharp,
              ontap: () {
                Navigator.pushNamed(context, payment_method_screen_route);
              },
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    // margin: EdgeInsets.only(right: 16.sp),
                    width: 70.w,
                    height: 70.h,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Center(
                        child: Text(
                      "Add New",
                      style: GoogleFonts.poppins(
                        color: primarycolor,
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    )),
                  ),
                ),
                PaymentCard(
                  ontap: () {},
                  svg: "assets/svgs/social/visa.svg",
                ),
                PaymentCard(
                  ontap: () {},
                  svg: "assets/svgs/social/paypal.svg",
                ),
                PaymentCard(
                  ontap: () {},
                  svg: "assets/svgs/social/mastercard.svg",
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            VisaCard(),
            SizedBox(
              height: 18.h,
            ),
            Row(
              children: [
                Text(
                  "Total",
                  style: GoogleFonts.poppins(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    color: black,
                  ),
                ),
                Spacer(),
                Text(
                  "\$",
                  style: GoogleFonts.aoboshiOne(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: dollarColor,
                  ),
                ),
                Text(
                  "60.00",
                  style: GoogleFonts.aoboshiOne(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                    color: black,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            OrangeButton(text: "Confirm Order", ontap: () {})
          ],
        ),
      ),
    );
  }
}
