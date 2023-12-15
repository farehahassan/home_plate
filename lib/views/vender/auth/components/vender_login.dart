import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_plate/routes/routes_name.dart';
import 'package:home_plate/views/base/components/login_components.dart';
import 'package:home_plate/views/base/components/orange_button.dart';
import 'package:home_plate/views/user/auth/components/dont_have_account.dart';

class VendorLogin extends StatefulWidget {
  const VendorLogin({super.key});

  @override
  State<VendorLogin> createState() => _VendorLoginState();
}

class _VendorLoginState extends State<VendorLogin> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LoginComponents(),
        SizedBox(
          height: 33.h,
        ),
        OrangeButton(
          ontap: () {
            Navigator.pushNamed(context, home_screen_route);
          },
          text: "Log In",
        ),
        SizedBox(
          height: 13.h,
        ),
        DontHaveAccount()
      ],
    );
  }
}
