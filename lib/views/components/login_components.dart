import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:home_plate/views/user/auth/components/social_card.dart';

class LoginComponents extends StatelessWidget {
  const LoginComponents({super.key});

  @override
  Widget build(BuildContext context) {
     final List<String> _text = [
    "Continue With Apple",
    "Continue With Google",
    "Continue With Facebook",
  ];
  final List<String> _svg = [
    "assets/svgs/social/appleBlack.svg",
    "assets/svgs/social/google.svg",
    "assets/svgs/social/facebook.svg"
  ];
    return Column(
      children: 
       List.generate(3, (index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 12.sp),
                  child: SocialCard(
                    text: _text[index],
                    svg: _svg[index],
                  ),
                );
              }),
    );
  }
}
