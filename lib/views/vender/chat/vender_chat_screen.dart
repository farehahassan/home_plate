import 'package:contained_tab_bar_view_with_custom_page_navigator/contained_tab_bar_view_with_custom_page_navigator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_plate/constants/color.dart';
import 'package:home_plate/views/components/custom_appbar.dart';
import 'package:home_plate/views/vender/chat/components/vcall.dart';
import 'package:home_plate/views/vender/chat/components/vchat.dart';

class VenderChatScreen extends StatefulWidget {
  const VenderChatScreen({super.key});

  @override
  State<VenderChatScreen> createState() => _VenderChatScreenState();
}

class _VenderChatScreenState extends State<VenderChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      appBar: CustomAppBar(
        title: "My Chats",
        secondicon: Icons.drag_indicator,
        firsticon: Icons.search,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.sp,
          vertical: 10.sp,
        ),
        child: ContainedTabBarView(
          tabs: [
            Text(
              'My Chats',
              style: GoogleFonts.poppins(
                fontSize: 16.sp,
                // color: primarycolor,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'My Calls',
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
            VChat(),
            VCall(),
          ],
          initialIndex: 1,
          onChange: (index) => print(index),
        ),
      ),
    );
  }
}
