// ignore_for_file: unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_plate/constants/color.dart';
import 'package:home_plate/routes/routes_name.dart';
import 'package:home_plate/views/components/custom_appbar.dart';
import 'package:home_plate/views/components/orange_button.dart';
import 'package:home_plate/views/components/sub_heading.dart';
import 'package:home_plate/views/user/address/components/change_address.dart';
import 'package:home_plate/views/user/payment_method/components/new_card_button.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  List<String> main = [
    "Home",
    "Office",
    "Job Office",
    "Computer Lab",
  ];
  List<String> subtext = [
    "3517 W. Gray St. Utica, Pennsylvania 57867",
    "2715 Ash Dr. San Jose, South Dakota 83475",
    "2118 Thornridge Cir. Syracuse, Connecticut 35624",
    "3517 W. Gray St. Utica, Pennsylvania 57867",
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      appBar: CustomAppBar(
        title: "Address",
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.sp,
          vertical: 23.sp,
        ),
        child: Column(
          children: [
            SubHeading(subHeading: "Shipping to"),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: main.length,
                itemBuilder: (context, index) {
                  return ChangeAddress(
                    mainColor: currentIndex == index ? white : black,
                    textColor:
                        currentIndex == index ? white : borderOutlineColor,
                    color: currentIndex == index ? primarycolor : white,
                    main: main[index],
                    subtext: subtext[index],
                    ontap: () {
                      setState(() {
                        currentIndex == index;
                      });
                    },
                  );
                },
              ),
            ),
            NewCardButton(
                text: "Add Address",
                ontap: () {
                  Navigator.pushNamed(context, add_new_address_screen_route);
                }),
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
