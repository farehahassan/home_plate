import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_plate/views/vender/chat/components/chat_cards.dart';

class VChat extends StatefulWidget {
  const VChat({super.key});

  @override
  State<VChat> createState() => _VChatState();
}

class _VChatState extends State<VChat> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.sp),
      child: SingleChildScrollView(
        child: Column(
          children: List.generate(10, (index) => ChatCards()),
        ),
      ),
    );
  }
}
