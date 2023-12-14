import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_plate/components/heading.dart';
import 'package:home_plate/components/logo_text.dart';
import 'package:home_plate/components/orange_button.dart';
import 'package:home_plate/constants/color.dart';
import 'package:home_plate/routes/routes_name.dart';
import 'package:home_plate/views/user/auth/components/custom_text_field.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  List<String> _hinttext = [
    "Firstname",
    "Lastname",
    "Email Address",
    "Password",
    "Phone Number"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.sp),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LogoText(),
                ],
              ),
              SizedBox(
                height: 36.h,
              ),
              Heading(
                text: "Create Account",
                fontsize: 30.sp,
                color: black,
              ),
              SizedBox(
                height: 28.h,
              ),
              Column(
                children: List.generate(_hinttext.length, (index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 12.sp),
                    child: CustomTextField(
                      hinttext: _hinttext[index],
                    ),
                  );
                }),
              ),
              SizedBox(
                height: 12.h,
              ),
              OrangeButton(
                text: "Sign Up",
                ontap: () {
                  Navigator.pushNamed(context, home_screen_route);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
