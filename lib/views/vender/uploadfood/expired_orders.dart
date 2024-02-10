import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_plate/views/vender/uploadfood/components/expire_card.dart';

class ExpiredOrder extends StatefulWidget {
  const ExpiredOrder({super.key});

  @override
  State<ExpiredOrder> createState() => _ExpiredOrderState();
}

class _ExpiredOrderState extends State<ExpiredOrder> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.sp),
      child: (Column(
        children: List.generate(
          3,
          (index) => ExpireCard(),
        ),
      )),
    );
  }
}
