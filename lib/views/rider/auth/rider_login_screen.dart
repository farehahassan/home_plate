import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_plate/routes/routes_name.dart';
import 'package:home_plate/views/components/login_components.dart';
import 'package:home_plate/views/components/orange_button.dart';
import 'package:home_plate/views/user/auth/components/dont_have_account.dart';

class RiderLogin extends StatefulWidget {
  const RiderLogin({super.key});

  @override
  State<RiderLogin> createState() => _RiderLoginState();
}

class _RiderLoginState extends State<RiderLogin> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const LoginComponents(),
        SizedBox(
          height: 33.h,
        ),
        OrangeButton(
          ontap: () {
            Navigator.pushNamed(context, rider_navbar_route);
          },
          text: "Log In",
        ),
        SizedBox(
          height: 13.h,
        ),
        const DontHaveAccount()
      ],
    );
  }
}
