// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors

import 'package:contained_tab_bar_view_with_custom_page_navigator/contained_tab_bar_view_with_custom_page_navigator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
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
  // final PageController _pageController = PageController();
  // int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      appBar: CustomAppBar(
        title: "Order",
        secondicon: Icons.search,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.sp,
        ),
        child: ContainedTabBarView(
          tabs: [
            Text(
              'To Ship',
              style: GoogleFonts.poppins(
                fontSize: 16.sp,
                // color: primarycolor,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'Recieved',
              style: GoogleFonts.poppins(
                fontSize: 16.sp,
                // color: primarycolor,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'Cancelled',
              style: GoogleFonts.poppins(
                fontSize: 16.sp,
                // color: primarycolor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
          tabBarProperties: TabBarProperties(
            width: double.infinity.w,
            unselectedLabelColor: greyColor,
            labelColor: primarycolor,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: primarycolor,
            // height: 3.h,
            indicatorWeight: 3.w,
          ),
          tabBarViewProperties: TabBarViewProperties(
            dragStartBehavior: DragStartBehavior.start,
          ),
          views: [
            ShipScreen(),
            RecieveScreen(),
            CancelScreen(),
          ],
          initialIndex: 1,
          onChange: (index) => print(index),
        ),
      ),
    );
  }

  // String _getPageName(int index) {
  //   switch (index) {
  //     case 0:
  //       return 'To Ship';
  //     case 1:
  //       return 'To Receive';
  //     case 2:
  //       return 'To Cancel';
  //     default:
  //       return '';
  //   }
  // }
}
