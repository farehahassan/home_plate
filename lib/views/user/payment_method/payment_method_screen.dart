import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_plate/constants/color.dart';
import 'package:home_plate/views/components/custom_appbar.dart';
import 'package:home_plate/views/components/orange_button.dart';
import 'package:home_plate/views/user/payment_method/components/new_card_button.dart';
import 'package:home_plate/views/user/payment_method/components/payment_card.dart';
// import 'package:home_plate/views/user/checkout/components/payment_card.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({super.key});

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  bool isSelected1 = true;
  bool isSelected2 = false;
  bool isSelected3 = false;
  List<String> _svgs = [
    "assets/svgs/social/visa.svg",
    "assets/svgs/social/paypal.svg",
    "assets/svgs/social/mastercard.svg",
  ];
  List<String> _name = [
    "Visa Card",
    "Paypal",
    "Master Card",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      appBar: CustomAppBar(title: "Payment Method"),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.sp,
          vertical: 25.sp,
        ),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  isSelected1 = true;
                  isSelected2 = false;
                  isSelected3 = false;
                });
              },
              child: PaymentMethodCard(
                svg: _svgs[0],
                name: _name[0],
                color: isSelected1 ? primarycolor : white,
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  isSelected1 = false;
                  isSelected2 = true;
                  isSelected3 = false;
                });
              },
              child: PaymentMethodCard(
                svg: _svgs[1],
                name: _name[1],
                color: isSelected2 ? primarycolor : white,
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  isSelected1 = false;
                  isSelected2 = false;
                  isSelected3 = true;
                });
              },
              child: PaymentMethodCard(
                svg: _svgs[2],
                name: _name[2],
                color: isSelected3 ? primarycolor : white,
              ),
            ),
            Spacer(),
            NewCardButton(text: "Add New Card", ontap: () {}),
            SizedBox(
              height: 15.sp,
            ),
            OrangeButton(text: "Save", ontap: () {})
          ],
        ),
      ),
    );
  }
}
