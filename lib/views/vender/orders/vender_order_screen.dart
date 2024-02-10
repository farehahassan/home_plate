import 'package:contained_tab_bar_view_with_custom_page_navigator/contained_tab_bar_view_with_custom_page_navigator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_plate/constants/color.dart';
import 'package:home_plate/views/components/custom_appbar.dart';
import 'package:home_plate/views/user/order/views/cancel_screen/cancel_screen.dart';
import 'package:home_plate/views/user/order/views/ship_screen/ship_screen.dart';
import 'package:home_plate/views/vender/uploadfood/active_orders.dart';
import 'package:home_plate/views/vender/uploadfood/expired_orders.dart';

class VenderOrderScreen extends StatefulWidget {
  const VenderOrderScreen({super.key});

  @override
  State<VenderOrderScreen> createState() => _VenderOrderScreenState();
}

class _VenderOrderScreenState extends State<VenderOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      appBar: CustomAppBar(title: "My Orders"),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.sp,
          vertical: 10.sp,
        ),
        child: ContainedTabBarView(
          tabs: [
            Text(
              'Active',
              style: GoogleFonts.poppins(
                fontSize: 16.sp,
                // color: primarycolor,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'Expired',
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
            ActiveOrder(),
            ExpiredOrder(),
          ],
          initialIndex: 1,
          onChange: (index) => print(index),
        ),
      ),
    );
  }
}
