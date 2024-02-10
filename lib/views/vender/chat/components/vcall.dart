import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_plate/views/vender/chat/components/call_cards.dart';

class VCall extends StatefulWidget {
  const VCall({super.key});

  @override
  State<VCall> createState() => _VCallState();
}

class _VCallState extends State<VCall> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.sp),
      child: SingleChildScrollView(
        child: Column(
          children: List.generate(10, (index) => CallCards()),
        ),
      ),
    );
  }
}
