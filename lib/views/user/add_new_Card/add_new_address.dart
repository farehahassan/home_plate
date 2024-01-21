import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_plate/constants/color.dart';
import 'package:home_plate/views/components/custom_appbar.dart';
import 'package:home_plate/views/components/orange_button.dart';
import 'package:home_plate/views/user/add_new_Card/components/info_card_text.dart';

class AddNewAddress extends StatefulWidget {
  const AddNewAddress({super.key});

  @override
  State<AddNewAddress> createState() => _AddNewAddressState();
}

class _AddNewAddressState extends State<AddNewAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Add New Address",
      ),
      backgroundColor: scaffoldColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.sp,
            vertical: 32.sp,
          ),
          child: Column(
            children: [
              const InfoCardText(
                text: "Full Name",
              ),
              const InfoCardText(
                text: "Last Name",
              ),
              const InfoCardText(
                text: "Address Line 1",
              ),
              const InfoCardText(
                text: "Address Line 2",
              ),
              const InfoCardText(
                text: "Town/City",
              ),
              const InfoCardText(
                text: "Region/State",
              ),
              const InfoCardText(
                text: "Phone Number",
              ),
              SizedBox(
                height: 20.h,
              ),
              OrangeButton(text: "Add Address", ontap: () {})
            ],
          ),
        ),
      ),
    );
  }
}
