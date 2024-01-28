import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_plate/constants/color.dart';
import 'package:home_plate/views/components/custom_appbar.dart';
import 'package:home_plate/views/user/home/components/discount_card.dart';

class SpecialOffersScreen extends StatefulWidget {
  const SpecialOffersScreen({super.key});

  @override
  State<SpecialOffersScreen> createState() => _SpecialOffersScreenState();
}

class _SpecialOffersScreenState extends State<SpecialOffersScreen> {
  List<String> discount = [
    "25%",
    "20%",
    "15%",
    "10%",
  ];
  List<String> image = [
    "assets/images/home/0.png",
    "assets/images/home/1.png",
    "assets/images/home/2.png",
    "assets/images/home/3.png",
  ];
  List<Color> bgColor = [
    primarycolor,
    const Color(0xff47BE45),
    const Color(0xff593FF4),
    const Color(0xffDFE24F),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      appBar: CustomAppBar(
        title: "Special Offers",
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.sp,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: List.generate(
              image.length,
              (index) => DiscountCard(
                bgColor: bgColor[index],
                discount: discount[index],
                image: image[index],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
