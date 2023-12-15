import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_plate/constants/color.dart';
import 'package:home_plate/views/user/auth/Forgot/components/code_text_field.dart';

class EnterCodeTextField extends StatefulWidget {
  const EnterCodeTextField({super.key});

  @override
  State<EnterCodeTextField> createState() => _EnterCodeTextFieldState();
}

class _EnterCodeTextFieldState extends State<EnterCodeTextField> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          6,
          (index) => Padding(
                padding: EdgeInsets.only(right: 4.sp),
                child: CodeTextField(),
              )),
    );
  }
}
