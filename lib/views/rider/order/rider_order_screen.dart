import 'package:contained_tab_bar_view_with_custom_page_navigator/contained_tab_bar_view_with_custom_page_navigator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_plate/constants/color.dart';
import 'package:home_plate/views/components/custom_appbar.dart';
import 'package:home_plate/views/rider/custombar/rider_appbar.dart';
import 'package:home_plate/views/rider/order/current_order.dart';
import 'package:home_plate/views/rider/order/order_history.dart';

class RiderOrderScreen extends StatefulWidget {
  const RiderOrderScreen({super.key});

  @override
  State<RiderOrderScreen> createState() => _RiderOrderScreenState();
}

class _RiderOrderScreenState extends State<RiderOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      appBar: RiderAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.sp,
        ),
        child: ContainedTabBarView(
          tabs: [
            // Text(
            //   'To Ship',
            //   style: GoogleFonts.poppins(
            //     fontSize: 16.sp,
            //     // color: primarycolor,
            //     fontWeight: FontWeight.w500,
            //   ),
            // ),
            Text(
              'Current Order',
              style: GoogleFonts.poppins(
                fontSize: 16.sp,
                // color: primarycolor,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'Order History',
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
            // ShipScreen(),
            CurrentOrder(),
            OrderHistory(),
          ],
          initialIndex: 1,
          onChange: (index) => print(index),
        ),
      ),
    );
  }
}
