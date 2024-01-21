// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_plate/constants/color.dart';
import 'package:home_plate/views/components/custom_appbar.dart';
import 'package:home_plate/views/user/order/views/cancel_screen/cancel_screen.dart';
import 'package:home_plate/views/user/order/views/recieve_screen/recieve_screen.dart';
import 'package:home_plate/views/user/order/views/ship_screen/ship_screen.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  final PageController _pageController = PageController();
  int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      appBar: CustomAppBar(title: "Order"),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15.sp,
        ),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 70.h,
              child: Container(
                // decoration: BoxDecoration(),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: 130.w,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 12.h,
                          ),
                          Text(
                            _getPageName(index),
                            style: TextStyle(
                              color: _currentPageIndex == index
                                  ? primarycolor
                                  : Color(0xffD9D9D9),
                              fontSize:
                                  _currentPageIndex == index ? 16.sp : 16.sp,
                              fontWeight: _currentPageIndex == index
                                  ? FontWeight.w500
                                  : FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Container(
                            height: 3.h,
                            width: double.infinity.w,
                            decoration: BoxDecoration(
                              color: _currentPageIndex == index
                                  ? primarycolor
                                  : Color(0xffD9D9D9),
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPageIndex = index;
                  });
                },
                children: const [
                  ShipScreen(),
                  RecieveScreen(),
                  CancelScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _getPageName(int index) {
    switch (index) {
      case 0:
        return 'To Ship';
      case 1:
        return 'To Receive';
      case 2:
        return 'To Cancel';
      default:
        return '';
    }
  }
}
