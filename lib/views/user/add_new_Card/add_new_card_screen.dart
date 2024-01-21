import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_plate/constants/color.dart';
import 'package:home_plate/views/components/custom_appbar.dart';
import 'package:home_plate/views/components/orange_button.dart';
import 'package:home_plate/views/user/add_new_Card/components/info_card_text.dart';

class AddNewCardScreen extends StatefulWidget {
  const AddNewCardScreen({super.key});

  @override
  State<AddNewCardScreen> createState() => _AddNewCardScreenState();
}

class _AddNewCardScreenState extends State<AddNewCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Add New Card",
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
                text: "Name on card",
              ),
              const InfoCardText(
                text: "Card Number",
              ),
              const InfoCardText(
                text: "CVV",
              ),
              const InfoCardText(
                text: "Expiry Date",
              ),
              const InfoCardText(
                text: "Zip Code",
              ),
              SizedBox(
                height: 20.h,
              ),
              OrangeButton(text: "Add Card", ontap: () {})
            ],
          ),
        ),
      ),
    );
  }
}
