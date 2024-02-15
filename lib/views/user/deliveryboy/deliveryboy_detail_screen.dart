// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_plate/constants/color.dart';

class DeliveryBoyDetailScreen extends StatefulWidget {
  const DeliveryBoyDetailScreen({super.key});

  @override
  State<DeliveryBoyDetailScreen> createState() =>
      _DeliveryBoyDetailScreenState();
}

class _DeliveryBoyDetailScreenState extends State<DeliveryBoyDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      body: Column(
        children: [
          Container(
            // width: double.infinity.w,
            height: 400.h,
            child: Stack(children: [
              Positioned(
                top: 0,
                child: Container(
                  width: double.infinity.w,
                  height: 200.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/home/cover.png",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(child: CircleAvatar())
            ]),
          )
        ],
      ),
    );
  }
}
