import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_plate/constants/color.dart';
import 'package:home_plate/views/components/custom_appbar.dart';
import 'package:home_plate/views/vender/myfoods/components/myfood_card.dart';

class VenderMyFoods extends StatefulWidget {
  const VenderMyFoods({super.key});

  @override
  State<VenderMyFoods> createState() => _VenderMyFoodsState();
}

class _VenderMyFoodsState extends State<VenderMyFoods> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      appBar: CustomAppBar(
        title: "My Recipes",
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.sp,
          vertical: 10.sp,
        ),
        child: Column(
          children: List.generate(3, (index) => MyFoodCard()),
        ),
      ),
    );
  }
}
