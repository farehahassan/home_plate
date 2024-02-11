import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_plate/constants/color.dart';
import 'package:home_plate/views/components/custom_appbar.dart';
import 'package:home_plate/views/user/checkout/components/visa_card.dart';
import 'package:home_plate/views/user/wallet/components/transaction_history_card.dart';

class VenderPaymentHistory extends StatefulWidget {
  const VenderPaymentHistory({super.key});

  @override
  State<VenderPaymentHistory> createState() => _VenderPaymentHistoryState();
}

class _VenderPaymentHistoryState extends State<VenderPaymentHistory> {
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
        title: "Payment History",
        firsticon: Icons.search,
        secondicon: Icons.drag_indicator,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 10.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VisaCard(),
              SizedBox(
                height: 20.h,
              ),
              HeadingText(
                headingname: "Today's History",
              ),
              SizedBox(
                height: 10.h,
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
      ),
    );
  }
}

class HeadingText extends StatelessWidget {
  final String headingname;
  const HeadingText({super.key, required this.headingname});

  @override
  Widget build(BuildContext context) {
    return Text(
      headingname,
      style: GoogleFonts.poppins(
        fontSize: 18.sp,
        fontWeight: FontWeight.w500,
        color: black,
      ),
    );
  }
}
