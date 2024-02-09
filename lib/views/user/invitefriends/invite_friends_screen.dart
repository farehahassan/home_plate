import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_plate/constants/color.dart';
import 'package:home_plate/views/components/custom_appbar.dart';
import 'package:home_plate/views/user/invitefriends/components/invite_card.dart';

class InviteFriendsScreen extends StatefulWidget {
  const InviteFriendsScreen({super.key});

  @override
  State<InviteFriendsScreen> createState() => _InviteFriendsScreenState();
}

class _InviteFriendsScreenState extends State<InviteFriendsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Invite Friends",
      ),
      backgroundColor: scaffoldColor,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.sp,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: List.generate(20, (index) => InviteCard()),
          ),
        ),
      ),
    );
  }
}
